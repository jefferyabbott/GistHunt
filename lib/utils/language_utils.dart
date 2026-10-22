class LanguageUtils {
  static const Map<String, String> extensionToLanguage = {
    // Web languages
    'js': 'javascript',
    'jsx': 'javascript',
    'ts': 'typescript',
    'tsx': 'typescript',
    'html': 'xml',
    'htm': 'xml',
    'xml': 'xml',
    'css': 'css',
    'scss': 'scss',
    'sass': 'scss',
    'less': 'less',
    'json': 'json',

    // System/compiled languages
    'c': 'c',
    'h': 'c',
    'cpp': 'cpp',
    'cc': 'cpp',
    'cxx': 'cpp',
    'hpp': 'cpp',
    'cs': 'csharp',
    'java': 'java',
    'kt': 'kotlin',
    'kts': 'kotlin',
    'swift': 'swift',
    'rs': 'rust',
    'go': 'go',

    // Scripting languages
    'py': 'python',
    'rb': 'ruby',
    'php': 'php',
    'pl': 'perl',
    'lua': 'lua',
    'r': 'r',
    'R': 'r',

    // Mobile
    'dart': 'dart',
    'scala': 'scala',
    'groovy': 'groovy',

    // Shell/config
    'sh': 'bash',
    'bash': 'bash',
    'zsh': 'bash',
    'fish': 'bash',
    'ps1': 'powershell',
    'bat': 'dos',
    'cmd': 'dos',

    // Markup/data
    'md': 'markdown',
    'markdown': 'markdown',
    'yaml': 'yaml',
    'yml': 'yaml',
    'toml': 'ini',
    'ini': 'ini',
    'conf': 'ini',

    // Database
    'sql': 'sql',

    // Other
    'dockerfile': 'dockerfile',
    'makefile': 'makefile',
    'gradle': 'gradle',
    'graphql': 'graphql',
    'gql': 'graphql',
  };

  /// Gets the syntax highlighting language based on the filename
  /// Returns 'plaintext' if no matching language is found
  static String getLanguageFromFilename(String filename) {
    final extension = filename.split('.').last.toLowerCase();
    return extensionToLanguage[extension] ?? 'plaintext';
  }

  /// Gets the display name of a language (can be used for UI elements)
  /// Returns the language name with proper capitalization
  static String getDisplayName(String language) {
    switch (language) {
      case 'javascript':
        return 'JavaScript';
      case 'typescript':
        return 'TypeScript';
      case 'python':
        return 'Python';
      case 'csharp':
        return 'C#';
      case 'cpp':
        return 'C++';
      default:
        return language.isEmpty
            ? 'Plain Text'
            : language[0].toUpperCase() + language.substring(1);
    }
  }
}
