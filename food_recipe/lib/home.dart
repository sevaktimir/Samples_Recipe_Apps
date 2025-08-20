import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Recipe> _recipes = [
    Recipe(
      name: 'Chole Bhature',
      images: 'assets/images/chole_bhature.jpg',
      rating: 4.5,
      totalTime: '30 mins',
    ),
    Recipe(
      name: 'Dhosa',
      images: 'assets/images/dhosa.jpg',
      rating: 4.7,
      totalTime: '25 mins',
    ),
    Recipe(
      name: 'Manchuriyan',
      images: 'assets/images/manchuriyan.jpg',
      rating: 4.6,
      totalTime: '35 mins',
    ),
    Recipe(
      name: 'Panipuri',
      images: 'assets/images/panipuri.jpg',
      rating: 4.8,
      totalTime: '20 mins',
    ),
    Recipe(
      name: 'Samosa',
      images: 'assets/images/samosa.jpg',
      rating: 4.9,
      totalTime: '40 mins',
    ),
    Recipe(
      name: 'Thepla',
      images: 'assets/images/thepla.jpg',
      rating: 4.3,
      totalTime: '30 mins',
    ),
  ];

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Food Recipe'),
          ],
        ),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _recipes.length,
              itemBuilder: (context, index) {
                return RecipeCard(
                  title: _recipes[index].name,
                  cookTime: _recipes[index].totalTime,
                  rating: _recipes[index].rating.toString(),
                  thumbnailUrl: _recipes[index].images,
                );
              },
            ),
    );
  }
}
