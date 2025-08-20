import 'package:flutter/material.dart';

class RecipeDescriptionPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  RecipeDescriptionPage({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(imageUrl),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
