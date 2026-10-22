import 'dart:io';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class GistShareService {
  static const _macosChannel = MethodChannel('com.gisthunt/macos');

  /// Share the gist URL using the native share sheet
  static Future<void> shareGistUrl({
    required String gistUrl,
    Rect? sharePositionOrigin,
  }) async {
    await Share.share(
      gistUrl,
      sharePositionOrigin: sharePositionOrigin,
    );
  }

  /// Export gist content to a file
  /// On macOS: Shows native save dialog via platform channel
  /// On iOS/Android: Uses share sheet
  static Future<String?> exportGistToFile({
    required String content,
    required String fileName,
    Rect? sharePositionOrigin,
  }) async {
    if (Platform.isMacOS) {
      // Use native macOS save panel via platform channel
      final result = await _macosChannel.invokeMethod<String?>('saveFileDialog', {
        'suggestedName': fileName,
        'content': content,
      });
      return result;
    } else {
      final tempDir = await getTemporaryDirectory();
      final tempFile = File('${tempDir.path}/$fileName');
      await tempFile.writeAsString(content);

      final xFile = XFile(tempFile.path);
      await Share.shareXFiles(
        [xFile],
        subject: fileName,
        sharePositionOrigin: sharePositionOrigin,
      );
      return tempFile.path;
    }
  }

  /// Export all files in a gist
  /// On macOS: Shows directory picker via platform channel
  /// On iOS/Android: Uses share sheet
  static Future<String?> exportAllGistFiles({
    required Map<String, String> fileContents, // filename -> content
    required String gistDescription,
    Rect? sharePositionOrigin,
  }) async {
    if (Platform.isMacOS) {
      // Ask the user for an export folder via the native macOS directory picker.
      final String? directoryPath = await _macosChannel.invokeMethod<String?>('selectDirectoryDialog');

      if (directoryPath == null) {
        return null;
      }

      var gistDirName = gistDescription.isNotEmpty
          ? gistDescription.replaceAll(RegExp(r'[^\w\s-]'), '').trim()
          : 'gist_files';

      if (gistDirName.isEmpty) {
        gistDirName = 'gist_files';
      }

      var gistDir = Directory('$directoryPath/$gistDirName');

      // If directory exists, add a number suffix
      var counter = 1;
      while (await gistDir.exists()) {
        gistDir = Directory('$directoryPath/$gistDirName ($counter)');
        counter++;
      }

      await gistDir.create(recursive: true);

      for (var entry in fileContents.entries) {
        final file = File('${gistDir.path}/${entry.key}');
        await file.writeAsString(entry.value);
      }

      return gistDir.path;
    } else {
      final tempDir = await getTemporaryDirectory();
      final filePaths = <String>[];

      for (var entry in fileContents.entries) {
        final tempFile = File('${tempDir.path}/${entry.key}');
        await tempFile.writeAsString(entry.value);
        filePaths.add(tempFile.path);
      }

      final xFiles = filePaths.map((path) => XFile(path)).toList();
      await Share.shareXFiles(
        xFiles,
        subject: gistDescription.isNotEmpty ? gistDescription : 'Gist Files',
        sharePositionOrigin: sharePositionOrigin,
      );
      return tempDir.path;
    }
  }

  /// Reveal file or folder in Finder (macOS only)
  static Future<void> revealInFinder(String path) async {
    if (Platform.isMacOS) {
      await _macosChannel.invokeMethod('revealInFinder', path);
    }
  }

  /// Generate embed code for a gist
  static String generateEmbedCode({
    required String gistId,
    required String ownerLogin,
  }) {
    return '<script src="https://gist.github.com/$ownerLogin/$gistId.js"></script>';
  }

  /// Get the gist URL
  static String getGistUrl(String gistId) {
    return 'https://gist.github.com/$gistId';
  }

  /// Copy text to clipboard
  static Future<void> copyToClipboard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }
}
