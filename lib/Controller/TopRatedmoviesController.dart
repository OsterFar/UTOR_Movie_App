import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' hide Response;
import 'package:http/http.dart';

Future<Response> ancs() async {
  Response? response;
  //Dio dio = new Dio();
  response = await http.get("https://api.publicapis.org/entries");

  return response;
}
