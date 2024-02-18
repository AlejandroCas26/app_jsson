import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class UserService {
  static Future<List<dynamic>> getUsers() async {
    final String response = await rootBundle.loadString('database/tarea.json');
    return json.decode(response);
  }
}
