import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/app_model.dart';

Future<List<Task>> fetchData() async {
  final response = await http.get(Uri.parse('http://10.0.2.2:8000/api/tasks'));

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body)['veriler'];
    List<Task> tasks = data.map((json) => Task.fromJson(json)).toList();
    return tasks;
  } else {
    throw Exception('Failed to load data');
  }
}
