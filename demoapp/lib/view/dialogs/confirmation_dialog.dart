import 'package:flutter/material.dart';

/// This file contains reusable dialog widgets, such as confirmation and error dialogs.
/// These dialogs can be used throughout the app for consistent user interaction.

class ConfirmationDialog extends StatelessWidget {
  final String message;
  final VoidCallback onConfirm;

  ConfirmationDialog({required this.message, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Confirm'),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            onConfirm();
            Navigator.of(context).pop();
          },
          child: Text('Confirm'),
        ),
      ],
    );
  }
}
