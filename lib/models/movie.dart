class Movie {
  String title;
  String posterPath;
  String overview;
  double voteAverage;
  int id;

  Movie(
    this.title,
    this.posterPath,
    this.overview,
    this.voteAverage,
    this.id,
  );

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        posterPath = json['poster_path'],
        overview = json['overview'],
        voteAverage = json['vote_average'] * 1.0,
        id = json['id'];

  // Movie.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   title = json['title'];
  //   voteAverage = json['vote_average'] * 1.0;
  //   overview = json['overview'];
  //   posterPath = json['poster_path'];
  // }
}
