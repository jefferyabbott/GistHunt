import Cocoa
import FlutterMacOS
import ServiceManagement

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    RegisterGeneratedPlugins(registry: flutterViewController)

    // Set up method channel for launch at login and quit
    let channel = FlutterMethodChannel(
      name: "com.gisthunt/macos",
      binaryMessenger: flutterViewController.engine.binaryMessenger
    )

    channel.setMethodCallHandler { (call, result) in
      switch call.method {
      case "isLaunchAtLoginEnabled":
        if #available(macOS 13.0, *) {
          let status = SMAppService.mainApp.status
          result(status == .enabled)
        } else {
          result(false)
        }

      case "setLaunchAtLogin":
        guard let enabled = call.arguments as? Bool else {
          result(FlutterError(code: "INVALID_ARGUMENT", message: "Expected boolean", details: nil))
          return
        }

        if #available(macOS 13.0, *) {
          do {
            if enabled {
              try SMAppService.mainApp.register()
            } else {
              try SMAppService.mainApp.unregister()
            }
            result(true)
          } catch {
            result(FlutterError(code: "SERVICE_ERROR", message: error.localizedDescription, details: nil))
          }
        } else {
          result(FlutterError(code: "UNSUPPORTED", message: "Requires macOS 13.0 or later", details: nil))
        }

      case "quitApp":
        NSApplication.shared.terminate(nil)
        result(true)

      case "saveFileDialog":
        guard let args = call.arguments as? [String: Any],
              let suggestedName = args["suggestedName"] as? String,
              let content = args["content"] as? String else {
          result(FlutterError(code: "INVALID_ARGUMENT", message: "Expected suggestedName and content", details: nil))
          return
        }

        // Menu bar apps aren't active by default; without this the panel opens behind other windows.
        NSApp.activate(ignoringOtherApps: true)

        let savePanel = NSSavePanel()
        savePanel.nameFieldStringValue = suggestedName
        savePanel.canCreateDirectories = true
        savePanel.isExtensionHidden = false
        savePanel.level = .modalPanel
        savePanel.worksWhenModal = true

        savePanel.directoryURL = FileManager.default.urls(for: .downloadsDirectory, in: .userDomainMask).first

        savePanel.begin { response in
          guard response == .OK, let fileURL = savePanel.url else {
            result(nil)
            return
          }

          do {
            try content.write(to: fileURL, atomically: true, encoding: .utf8)
            result(fileURL.path)
          } catch {
            NSLog("saveFileDialog write error: %@", error.localizedDescription)
            result(FlutterError(code: "WRITE_ERROR", message: error.localizedDescription, details: nil))
          }
        }

      case "selectDirectoryDialog":
        // Menu bar apps aren't active by default; without this the panel opens behind other windows.
        NSApp.activate(ignoringOtherApps: true)

        let openPanel = NSOpenPanel()
        openPanel.canChooseFiles = false
        openPanel.canChooseDirectories = true
        openPanel.canCreateDirectories = true
        openPanel.allowsMultipleSelection = false
        openPanel.level = .modalPanel
        openPanel.worksWhenModal = true
        openPanel.prompt = "Choose Export Location"

        openPanel.directoryURL = FileManager.default.urls(for: .downloadsDirectory, in: .userDomainMask).first

        openPanel.begin { response in
          guard response == .OK, let directoryURL = openPanel.url else {
            result(nil)
            return
          }

          result(directoryURL.path)
        }

      case "revealInFinder":
        guard let path = call.arguments as? String else {
          result(FlutterError(code: "INVALID_ARGUMENT", message: "Expected path string", details: nil))
          return
        }

        let url = URL(fileURLWithPath: path)
        NSWorkspace.shared.activateFileViewerSelecting([url])
        result(true)

      case "bounceDownloadsInDock":
        NSApp.requestUserAttention(.informationalRequest)
        result(true)

      default:
        result(FlutterMethodNotImplemented)
      }
    }

    // Listen for screen configuration changes (monitor connect/disconnect)
    NotificationCenter.default.addObserver(
      self,
      selector: #selector(screenConfigurationChanged),
      name: NSApplication.didChangeScreenParametersNotification,
      object: nil
    )

    super.awakeFromNib()
  }

  @objc func screenConfigurationChanged(_ notification: Notification) {
    guard let screen = self.screen ?? NSScreen.main else { return }

    let visibleFrame = screen.visibleFrame
    var newFrame = self.frame

    // If window is larger than the screen, resize it to fit
    if newFrame.width > visibleFrame.width {
      newFrame.size.width = visibleFrame.width
    }
    if newFrame.height > visibleFrame.height {
      newFrame.size.height = visibleFrame.height
    }

    // Ensure window is positioned on screen
    if newFrame.maxX > visibleFrame.maxX {
      newFrame.origin.x = visibleFrame.maxX - newFrame.width
    }
    if newFrame.minX < visibleFrame.minX {
      newFrame.origin.x = visibleFrame.minX
    }
    if newFrame.maxY > visibleFrame.maxY {
      newFrame.origin.y = visibleFrame.maxY - newFrame.height
    }
    if newFrame.minY < visibleFrame.minY {
      newFrame.origin.y = visibleFrame.minY
    }

    self.setFrame(newFrame, display: true, animate: true)
  }

  deinit {
    NotificationCenter.default.removeObserver(self)
  }
}
