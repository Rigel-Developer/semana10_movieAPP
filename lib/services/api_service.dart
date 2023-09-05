import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:semana10_movie_app/models/movie_discover_model.dart';
import 'package:semana10_movie_app/util/constants.dart';

class ApiService {
  Future<List<MovieDiscoverModel>> getMovies() async {
    List<MovieDiscoverModel> movies = [];
    final url = Uri.parse(
        'https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=2&sort_by=popularity.desc');

    final headers = {'Authorization': 'Bearer $token'};
    final response = await http.get(url, headers: headers);
    Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
    movies = jsonResponse['results']
        .map<MovieDiscoverModel>((e) => MovieDiscoverModel.fromJson(e))
        .toList();

    return movies;
  }
}
