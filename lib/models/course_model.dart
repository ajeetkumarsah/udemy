class Course {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final bool isPopular;
  final bool isJoined;

  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isPopular = false,
    this.isJoined = false,
  });
}
