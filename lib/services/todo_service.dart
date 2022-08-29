import 'package:riverpod_tutorial/models/todo_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TodoService {
  Future<List<TodoModel>> getTodos() async {
    final uri = Uri(
      scheme: "https",
      host: "jsonplaceholder.typicode.com",
      path: "todos",
    );

    final response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map(((e) => TodoModel.fromJson(e))).toList();
    }

    throw Exception('Could not retrieve data.');
  }
}
