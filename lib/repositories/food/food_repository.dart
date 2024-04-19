import 'package:nutri_fast/models/food_model.dart';

abstract interface class FoodRepository {
  Future<List<FoodModel>?> getFoods();
}
