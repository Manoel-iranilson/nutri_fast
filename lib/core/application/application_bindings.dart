import 'package:get/get.dart';
import 'package:nutri_fast/repositories/food/food_repository.dart';
import 'package:nutri_fast/repositories/food/food_repository_impl.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodRepository>(() => FoodRepositoryImpl(), fenix: true);
  }
}
