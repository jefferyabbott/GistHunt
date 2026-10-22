import Cocoa
import FlutterMacOS

// Borderless windows can't become key by default, which would block keyboard input.
class KeyableWindow: NSWindow {
  override var canBecomeKey: Bool {
    return true
  }

  override var canBecomeMain: Bool {
    return true
  }
}

@main
class AppDelegate: FlutterAppDelegate {
  var statusItem: NSStatusItem?
  var menuBarWindow: NSWindow?
  var eventMonitor: Any?

  override func applicationDidFinishLaunching(_ notification: Notification) {
    statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    if let button = statusItem?.button {
      button.title = "{🔍}"
      button.image = nil
      button.action = #selector(toggleWindow(_:))
      button.target = self
    }

    // Move the Flutter content into a borderless KeyableWindow shown as a menu bar popover.
    if let mainFlutterWindow = NSApplication.shared.windows.first {
      let screenHeight = NSScreen.main?.visibleFrame.height ?? 800
      let windowHeight = min(screenHeight * 0.9, screenHeight - 100) // Leave room for menu bar

      let customWindow = KeyableWindow(
        contentRect: NSRect(x: 0, y: 0, width: 500, height: windowHeight),
        styleMask: [.borderless],
        backing: .buffered,
        defer: false
      )

      // Transfer Flutter content to custom window
      customWindow.contentView = mainFlutterWindow.contentView
      customWindow.level = .popUpMenu
      customWindow.backgroundColor = .clear
      customWindow.isOpaque = false
      customWindow.hasShadow = true

      if let contentView = customWindow.contentView {
        contentView.wantsLayer = true
        contentView.layer?.cornerRadius = 12.0
        contentView.layer?.masksToBounds = true
      }

      mainFlutterWindow.close()
      menuBarWindow = customWindow

      // Start hidden
      customWindow.orderOut(nil)
    }
  }

  @objc func toggleWindow(_ sender: AnyObject?) {
    // Check if this was a right-click
    if let event = NSApp.currentEvent, event.type == .rightMouseUp {
      showMenu()
      return
    }

    guard let window = menuBarWindow else { return }

    if window.isVisible {
      hideWindow()
    } else {
      showWindow()
    }
  }

  func showMenu() {
    let menu = NSMenu()
    menu.addItem(NSMenuItem(title: "Open GistHunt", action: #selector(showWindow), keyEquivalent: ""))
    menu.addItem(NSMenuItem.separator())
    menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
    statusItem?.menu = menu
    statusItem?.button?.performClick(nil)
    statusItem?.menu = nil
  }

  @objc func showWindow() {
    guard let window = menuBarWindow, let button = statusItem?.button else { return }

    // Position window below menu bar icon
    let buttonRect = button.window?.convertToScreen(button.frame) ?? .zero
    var windowX = buttonRect.midX - (window.frame.width / 2)
    let windowY = buttonRect.minY - window.frame.height - 5

    // Ensure window stays within screen bounds
    if let screen = NSScreen.main {
      let visibleFrame = screen.visibleFrame
      if windowX + window.frame.width > visibleFrame.maxX {
        windowX = visibleFrame.maxX - window.frame.width
      }
      if windowX < visibleFrame.minX {
        windowX = visibleFrame.minX
      }
    }

    window.setFrameOrigin(NSPoint(x: windowX, y: windowY))

    NSApp.activate(ignoringOtherApps: true)
    window.makeKeyAndOrderFront(nil)

    // Ensure window can accept keyboard input
    window.makeFirstResponder(window.contentView)

    // Monitor for clicks outside to auto-close (only if not already monitoring)
    if eventMonitor == nil {
      eventMonitor = NSEvent.addGlobalMonitorForEvents(matching: [.leftMouseDown, .rightMouseDown]) { [weak self] event in
        if let window = self?.menuBarWindow, window.isVisible {
          if !window.frame.contains(NSEvent.mouseLocation) {
            self?.hideWindow()
          }
        }
      }
    }
  }

  func hideWindow() {
    menuBarWindow?.orderOut(nil)

    if let monitor = eventMonitor {
      NSEvent.removeMonitor(monitor)
      eventMonitor = nil
    }
  }

  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    // Don't quit when window closes - we're a menu bar app
    return false
  }

  override func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
    return true
  }
}
