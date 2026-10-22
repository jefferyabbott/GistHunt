import 'package:flutter/material.dart';
import 'package:gisthunt/l10n/app_localizations.dart';

class GistSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onSearch;
  final String? hintText;

  const GistSearchBar({
    super.key,
    required this.controller,
    required this.onSearch,
    this.hintText,
  });

  @override
  State<GistSearchBar> createState() => _GistSearchBarState();
}

class _GistSearchBarState extends State<GistSearchBar> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    // Rebuild to show/hide clear button
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onSearch,
        autocorrect: false,
        enableSuggestions: false,
        decoration: InputDecoration(
          hintText: widget.hintText ?? AppLocalizations.of(context)!.search,
          prefixIcon: const Icon(Icons.search),
          // Show a clear button only when there is text.
          suffixIcon: widget.controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    widget.controller.clear();
                    widget.onSearch('');
                  },
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
      ),
    );
  }
}
