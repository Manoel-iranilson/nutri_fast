import 'dart:convert';

import 'package:nutri_fast/constants.dart';
import 'package:nutri_fast/models/food_model.dart';
import 'package:nutri_fast/repositories/food/food_repository.dart';
import 'package:http/http.dart' as http;

class FoodRepositoryImpl implements FoodRepository {
  @override
  Future<List<FoodModel>> getFoods() async {
    try {
      final response = await http.get(Uri.parse("$baseApi/food"));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        List<FoodModel> foods =
            data.map((item) => FoodModel.fromJson(item)).toList();

        return foods;
      } else {
        throw Exception('Erro ao carregar alimentos');
      }
    } catch (e) {
      throw Exception('Erro de conexão: $e');
    }
  }
}
