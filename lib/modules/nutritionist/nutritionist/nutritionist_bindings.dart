import 'package:get/get.dart';
import 'nutritionist_controller.dart';

class NutritionistBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(NutritionistController(nutritionistRepository: Get.find()));
  }
}
