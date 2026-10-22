import 'package:flutter/material.dart';
import 'package:highlight/highlight.dart';
import 'package:highlight/languages/all.dart';

/// A widget that displays syntax-highlighted code in a read-only format
class SyntaxHighlightedCode extends StatelessWidget {
  final String code;
  final String? language;
  final TextStyle? baseStyle;
  final Map<String, TextStyle>? theme;

  const SyntaxHighlightedCode({
    super.key,
    required this.code,
    this.language,
    this.baseStyle,
    this.theme,
  });

  /// Custom syntax highlighting theme tuned for light and dark mode.
  static Map<String, TextStyle> _buildTheme(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return {
      'comment': TextStyle(color: isDark ? const Color(0xFF6A9955) : const Color(0xFF008000), fontStyle: FontStyle.italic),
      'quote': TextStyle(color: isDark ? const Color(0xFF6A9955) : const Color(0xFF008000), fontStyle: FontStyle.italic),
      'keyword': TextStyle(color: isDark ? const Color(0xFFD73A49) : const Color(0xFFD73A49), fontWeight: FontWeight.bold),
      'selector-tag': TextStyle(color: isDark ? const Color(0xFFD73A49) : const Color(0xFFD73A49), fontWeight: FontWeight.bold),
      'literal': TextStyle(color: isDark ? const Color(0xFF0086B3) : const Color(0xFF0086B3)),
      'subst': const TextStyle(color: Color(0xFF24292E)),
      'number': TextStyle(color: isDark ? const Color(0xFFB5CEA8) : const Color(0xFF098658)),
      'string': TextStyle(color: isDark ? const Color(0xFFCE9178) : const Color(0xFF032F62)),
      'doctag': TextStyle(color: isDark ? const Color(0xFFCE9178) : const Color(0xFF032F62)),
      'selector-id': TextStyle(color: isDark ? const Color(0xFF4EC9B0) : const Color(0xFF6F42C1)),
      'selector-class': TextStyle(color: isDark ? const Color(0xFF4EC9B0) : const Color(0xFF6F42C1)),
      'section': TextStyle(color: isDark ? const Color(0xFF4EC9B0) : const Color(0xFF6F42C1), fontWeight: FontWeight.bold),
      'type': TextStyle(color: isDark ? const Color(0xFF4EC9B0) : const Color(0xFF6F42C1)),
      'tag': TextStyle(color: isDark ? const Color(0xFF569CD6) : const Color(0xFF22863A)),
      'name': TextStyle(color: isDark ? const Color(0xFF569CD6) : const Color(0xFF22863A), fontWeight: FontWeight.bold),
      'attr': TextStyle(color: isDark ? const Color(0xFF9CDCFE) : const Color(0xFF6F42C1)),
      'attribute': TextStyle(color: isDark ? const Color(0xFF9CDCFE) : const Color(0xFF6F42C1)),
      'variable': TextStyle(color: isDark ? const Color(0xFF9CDCFE) : const Color(0xFF6F42C1)),
      'params': TextStyle(color: isDark ? const Color(0xFF9CDCFE) : const Color(0xFF6F42C1)),
      'class': TextStyle(color: isDark ? const Color(0xFFC586C0) : const Color(0xFF6F42C1), fontWeight: FontWeight.bold),
      'function': TextStyle(color: isDark ? const Color(0xFFDCDCAA) : const Color(0xFF6F42C1)),
      'title': TextStyle(color: isDark ? const Color(0xFFDCDCAA) : const Color(0xFF6F42C1), fontWeight: FontWeight.bold),
      'meta': TextStyle(color: isDark ? const Color(0xFF808080) : const Color(0xFF5E5E5E)),
      'meta-keyword': TextStyle(color: isDark ? const Color(0xFF808080) : const Color(0xFF5E5E5E)),
      'built_in': TextStyle(color: isDark ? const Color(0xFF4EC9B0) : const Color(0xFF005CC5)),
      'builtin-name': TextStyle(color: isDark ? const Color(0xFF4EC9B0) : const Color(0xFF005CC5)),
      'deletion': const TextStyle(color: Color(0xFFB31D28), backgroundColor: Color(0xFFFFEEF0)),
      'addition': const TextStyle(color: Color(0xFF22863A), backgroundColor: Color(0xFFF0FFF4)),
      'emphasis': const TextStyle(fontStyle: FontStyle.italic),
      'strong': const TextStyle(fontWeight: FontWeight.bold),
      'link': TextStyle(color: isDark ? const Color(0xFF3794FF) : const Color(0xFF005CC5), decoration: TextDecoration.underline),
    };
  }

  @override
  Widget build(BuildContext context) {
    final effectiveTheme = theme ?? _buildTheme(context);
    final effectiveBaseStyle = baseStyle ??
        const TextStyle(
          fontFamily: 'JetBrainsMono',
          fontSize: 14,
          height: 1.5,
        );

    if (language == null || language!.isEmpty || code.isEmpty) {
      return SelectableText(
        code,
        style: effectiveBaseStyle,
      );
    }

    try {
      String normalizedLang = language!.toLowerCase();

      // Map common GitHub language names to highlight.js names
      const languageMap = {
        'c++': 'cpp',
        'c#': 'csharp',
        'f#': 'fsharp',
        'objective-c': 'objectivec',
        'objective-c++': 'objectivec',
        'shell': 'bash',
      };

      normalizedLang = languageMap[normalizedLang] ?? normalizedLang;

      final mode = allLanguages[normalizedLang];
      if (mode == null) {
        return SelectableText(
          code,
          style: effectiveBaseStyle,
        );
      }

      final highlighter = Highlight();
      highlighter.registerLanguage(normalizedLang, mode);
      final result = highlighter.parse(code, language: normalizedLang);

      if (result.nodes == null || result.nodes!.isEmpty) {
        return SelectableText(
          code,
          style: effectiveBaseStyle,
        );
      }

      final children = _convertNodes(result.nodes, effectiveTheme, effectiveBaseStyle);

      return SelectableText.rich(
        TextSpan(
          style: effectiveBaseStyle,
          children: children.isEmpty
              ? [TextSpan(text: code, style: effectiveBaseStyle)]
              : children,
        ),
      );
    } catch (e) {
      // Fall back to plain text if the highlighter throws on unusual input.
      return SelectableText(
        code,
        style: effectiveBaseStyle,
      );
    }
  }

  List<TextSpan> _convertNodes(
    List<Node>? nodes,
    Map<String, TextStyle> theme,
    TextStyle? defaultStyle,
  ) {
    if (nodes == null || nodes.isEmpty) return [];

    final spans = <TextSpan>[];
    for (final node in nodes) {
      TextStyle? nodeStyle = defaultStyle;
      if (node.className != null) {
        final themeStyle = theme[node.className!];
        if (themeStyle != null) {
          nodeStyle = defaultStyle != null
              ? defaultStyle.merge(themeStyle)
              : themeStyle;
        }
      }

      if (node.value != null && node.value!.isNotEmpty) {
        spans.add(TextSpan(
          text: node.value,
          style: nodeStyle,
        ));
      }

      // Children inherit this node's style as their default.
      if (node.children != null && node.children!.isNotEmpty) {
        spans.addAll(_convertNodes(node.children, theme, nodeStyle));
      }
    }
    return spans;
  }
}
