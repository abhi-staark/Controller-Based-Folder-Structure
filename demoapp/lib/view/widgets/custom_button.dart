import 'package:flutter/material.dart';

/// This file defines reusable custom widgets, such as buttons.
/// These widgets can be used across the app to maintain a consistent UI design.

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
