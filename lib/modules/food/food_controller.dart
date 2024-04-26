import 'package:get/get.dart';
import 'package:nutri_fast/models/food_model.dart';

class FoodController extends GetxController {
  final _food = Rxn<FoodModel>();
  FoodModel? get food => _food.value;
  set food(value) => _food(value);

  @override
  void onInit() {
    food = Get.arguments;
    super.onInit();
  }
}
