import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:soccer_news/models/movie.dart';

class HttpService {
  final String apiKey = 'e8fe7aa8f0cccf06207691689870c1fd';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/upcoming?api_key=';

  Future getUpcomingMovies() async {
    final String url = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(url));
    if (result.statusCode == HttpStatus.ok) {
      print('Sukses Data Terambil');
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((movie) => Movie.fromJson(movie)).toList();

      return movies;
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
