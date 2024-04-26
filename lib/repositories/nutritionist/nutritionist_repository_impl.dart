import 'dart:convert';

import 'package:nutri_fast/constants.dart';
import 'package:nutri_fast/models/nutritionist_model.dart';
import 'package:nutri_fast/repositories/nutritionist/nutritionist_repository.dart';
import 'package:http/http.dart' as http;

class NutritionistRepositoryImpl implements NutritionistRepository {
  @override
  Future<List<NutritionistModel>?> getNutritionists() async {
    try {
      final response = await http.get(Uri.parse("$baseApi/nutritionists"));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);

        List<NutritionistModel> nutritionists =
            data.map((e) => NutritionistModel.fromJson(e)).toList();

        return nutritionists;
      } else {
        throw Exception('Erro ao carregar Nutricionistas');
      }
    } catch (e) {
      throw Exception('Erro de conexão: $e');
    }
  }

  @override
  Future<NutritionistModel> getNutritionist(String id) async {
    try {
      final response = await http.get(Uri.parse("$baseApi/nutritionists/$id"));

      if (response.statusCode == 200) {
        dynamic data = json.decode(response.body);

        NutritionistModel nutritionist = NutritionistModel.fromJson(data);

        return nutritionist;
      } else {
        throw Exception('Erro ao carregar Nutricionistas');
      }
    } catch (e) {
      throw Exception('Erro de conexão: $e');
    }
  }
}
