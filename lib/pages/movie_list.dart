import 'package:flutter/material.dart';
import 'package:soccer_news/service/http_service.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  String result = "";
  HttpService service = HttpService();

  @override
  void initState() {
    service = HttpService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    service.getUpcomingMovies().then((value) => {
          setState(() {
            result = value;
          })
        });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie List'),
      ),
      body: Center(
        child: Text(result),
      ),
    );
  }
}
