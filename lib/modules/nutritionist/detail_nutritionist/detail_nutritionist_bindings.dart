import 'package:get/get.dart';
import './detail_nutritionist_controller.dart';

class DetailNutritionistBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DetailNutritionistController(nutritionistRepository: Get.find()));
  }
}
