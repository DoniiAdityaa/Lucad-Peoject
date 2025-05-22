class Wisata {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final List<String> galleryImages;
  final double rating;
  final double price;
  final String mapsUrl;
  final String category;

  Wisata({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.galleryImages,
    required this.mapsUrl,
    required this.category,
    this.rating = 0.0,
    this.price = 0.0,
  });
}
