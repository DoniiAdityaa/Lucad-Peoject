class DestinationModel {
  final String name;
  final String description;
  final String image;
  final String mapsUrl;
  final String category;
  final List<String> gallery;

  DestinationModel({
    required this.name,
    required this.description,
    required this.category,
    required this.image,
    required this.gallery,
    required this.mapsUrl,
  });
}
