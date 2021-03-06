import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' hide Response;
import 'package:http/http.dart';
import 'package:movieapp/model/movie.dart';
import 'package:movieapp/widget/top_rated_list_item.dart';

var TopRatedMovie = List<Movie>;

//fetching the products and store the items in MovieList
void fetchTopRatedMovie() async {
  var temp = topratedURLFETCHER();
  if (temp != null) {
    TopRatedMovie = temp as Type;
  }
}

//Fetching all the data from API and converting it into list of movies
Future<List<Movie>?> topratedURLFETCHER() async {
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
