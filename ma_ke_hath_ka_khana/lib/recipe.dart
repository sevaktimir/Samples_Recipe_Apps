class Recipe {
  final String name;
  final String images;
  final double rating;
  final String totalTime;
  final String description;

  Recipe({
    required this.images,
    required this.name,
    required this.rating,
    required this.totalTime,
    required this.description,
  });

  @override
  String toString() {
    return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime, description: $description}';
  }
}
