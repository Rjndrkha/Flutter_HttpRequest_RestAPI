import 'package:http/http.dart' as http;

class HttpService {
  final String apiKey = 'e8fe7aa8f0cccf06207691689870c1fd';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/upcoming?api_key=';

  Future getUpcomingMovies() async {
    final String url = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(url));
    if (result.statusCode == 200) {
      print('Sukses Data Terambil');
      String response = result.body;
      return response;
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
