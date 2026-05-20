import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_request_2/models/toDo.dart';

class HttpService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/todos';

  Future<List> getToDo() async {
    final result = await http.get(
      Uri.parse(baseUrl),
      headers: {'Accept': 'application/json', 'User-Agent': 'Mozilla/5.0'},
    );

    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = jsonDecode(result.body);
      List toDo = jsonResponse.map((i) => ToDo.fromJson(i)).toList();
      return toDo;
    } else {
      print("fail");
      List.empty();
      return List.empty();
    }
  }
}
