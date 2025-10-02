class AnimeModel {
  final String name;
  final String coverImage;
  final double rating;
  final String animeType;
  final double? view;
  final int? clapCount;
  final int? seasonCount;
  final String? description;
  AnimeModel({
    required this.name,
    required this.coverImage,
    required this.rating,
    required this.animeType,
    this.view,
    this.clapCount,
    this.seasonCount,
    this.description,
  });
}
