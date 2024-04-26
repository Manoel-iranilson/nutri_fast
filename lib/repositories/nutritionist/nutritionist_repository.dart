import 'package:nutri_fast/models/nutritionist_model.dart';

abstract interface class NutritionistRepository {
  Future<List<NutritionistModel>?> getNutritionists();
  Future<NutritionistModel> getNutritionist(String id);
}
