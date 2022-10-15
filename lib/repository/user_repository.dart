import 'dart:convert';

import 'package:mangojek/models/user_model.dart';
import 'package:http/http.dart' as http;

class FoodRepository {
  final String _baseUrl = " http://127.0.0.1:3000/api/register";

  Future<List<UsersModel>> getFood() async {
    try {
      final url = Uri.parse(_baseUrl);
      final response = await http.post(url);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List;
        final users = json.map((e) => UsersModel.fromJson(e)).toList();
        return users;
      } else {
        throw Exception('failed load data');
      }
    } catch (e) {
      rethrow;
    }
  }
}
