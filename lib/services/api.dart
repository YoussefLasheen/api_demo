import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:api_demo/models/course.dart';

Future<Course> fetchCourse() async {
  final response = await http.get('http://skillzycp.com/api/UserApi/getOneOccasion/389/0');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(json.decode(response.body));
    // Use json.decode 2 times to fix the malfunctioning api
    return Course.fromJson(json.decode(json.decode(response.body)));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load');
  }
}