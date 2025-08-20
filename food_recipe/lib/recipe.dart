class Recipe {
  final String name;
  final String images;
  final double rating;
  final String totalTime;

  Recipe({
    required this.images,
    required this.name,
    required this.rating,
    required this.totalTime,
  });

  @override
  String toString() {
    return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime}';
  }
}
