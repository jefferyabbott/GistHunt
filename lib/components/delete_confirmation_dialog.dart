import 'package:flutter/material.dart';
import 'package:gisthunt/l10n/app_localizations.dart';

class DeleteConfirmationDialog extends StatefulWidget {
  final String title;
  final String message;
  final String confirmationText;

  const DeleteConfirmationDialog({
    super.key,
    required this.title,
    required this.message,
    this.confirmationText = 'DELETE',
  });

  static Future<bool> show({
    required BuildContext context,
    required String title,
    required String message,
    String confirmationText = 'DELETE',
  }) async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => DeleteConfirmationDialog(
        title: title,
        message: message,
        confirmationText: confirmationText,
      ),
    );
    return result ?? false;
  }

  @override
  State<DeleteConfirmationDialog> createState() =>
      _DeleteConfirmationDialogState();
}

class _DeleteConfirmationDialogState extends State<DeleteConfirmationDialog> {
  final TextEditingController _controller = TextEditingController();
  bool _isValid = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_validateInput);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _validateInput() {
    setState(() {
      _isValid = _controller.text == widget.confirmationText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(
            Icons.warning_amber_rounded,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(widget.title)),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.message),
          const SizedBox(height: 16),
          Text(
            AppLocalizations.of(context)!.deleteIsPermanent,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            AppLocalizations.of(context)!.typeToConfirm(widget.confirmationText),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _controller,
            autofocus: true,
            decoration: InputDecoration(
              hintText: widget.confirmationText,
              border: const OutlineInputBorder(),
              errorText: _controller.text.isNotEmpty && !_isValid
                  ? AppLocalizations.of(context)!.typeExactly(widget.confirmationText)
                  : null,
            ),
            onSubmitted: (_) {
              if (_isValid) {
                Navigator.pop(context, true);
              }
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(AppLocalizations.of(context)!.cancel),
        ),
        TextButton(
          onPressed: _isValid ? () => Navigator.pop(context, true) : null,
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.error,
          ),
          child: Text(AppLocalizations.of(context)!.delete),
        ),
      ],
    );
  }
}
