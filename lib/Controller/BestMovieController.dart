import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' hide Response;
import 'package:http/http.dart';
import 'package:movieapp/model/movie.dart';

var BestMovie = List<Movie>;

//fetching the products and store the items in MovieList
void fetchBestMovie() async {
  var temp = BestMovieURLFETCHER();
  if (temp != null) {
    BestMovie = temp as Type;
  }
}

//Fetching all the data from API and converting it into list of movies
Future<List<Movie>?> BestMovieURLFETCHER() async {
  Response? response;

  var url = "https://api.publicapis.org/entries";
  response = await http.get(url);
  if (response.statusCode == 200) {
    //Success
    var data = response.body;
    return productFromJson(data);
  } else {
    //error
    return null;
  }
}
