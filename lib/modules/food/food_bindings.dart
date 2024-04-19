import 'package:get/get.dart';
import './food_controller.dart';

class FoodBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(FoodController());
    }
}