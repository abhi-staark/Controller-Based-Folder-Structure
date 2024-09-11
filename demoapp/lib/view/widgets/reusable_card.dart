import 'package:flutter/material.dart';

/// A reusable card widget that can be used across the app.
/// This card accepts a title, description, and an optional image,
/// and can be styled as needed.

class ReusableCard extends StatelessWidget {
  final String title;
  final String description;
  final String? imageUrl;

  ReusableCard({
    required this.title,
    required this.description,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageUrl != null)
              Image.network(imageUrl!, fit: BoxFit.cover),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(description),
          ],
        ),
      ),
    );
  }
}
