class AnimeModel {
  final String animeName;
  final String ainmeCover;
  final double rating;
  final String animeType;
  final double? view;
  final int? clap;
  final int? countOfSessons;
  final String? discreption;
  AnimeModel({
    required this.animeName,
    required this.ainmeCover,
    required this.rating,
    required this.animeType,
    this.view,
    this.clap,
    this.countOfSessons,
    this.discreption,
  });
}
