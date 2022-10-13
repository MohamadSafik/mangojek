import 'dart:convert';

import 'package:mangojek/models/food_model.dart';
import 'package:http/http.dart' as http;

class FoodRepository {
  final String _baseUrl = "https://63387485937ea77bfdc06386.mockapi.io/product";

  Future<List<FoodModel>> getFood() async {
    try {
      final url = Uri.parse(_baseUrl);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List;
        final foods = json.map((e) => FoodModel.fromJson(e)).toList();
        return foods;
      } else {
        throw Exception('failed load data');
      }
    } catch (e) {
      rethrow;
    }
  }
}
