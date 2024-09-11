import 'package:flutter/material.dart';

/// This file defines a reusable loading spinner widget.
/// It can be used in multiple places in the app whenever loading is required.

class LoadingSpinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
