class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backDropPath;
  final double voteAverage;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.backDropPath,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      backDropPath: json['backdrop_path'],
      voteAverage: json['vote_average'].toDouble(),
    );
  }
}