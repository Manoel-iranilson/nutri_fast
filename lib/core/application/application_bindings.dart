import 'package:get/get.dart';
import 'package:nutri_fast/repositories/authentication/authentication_repository.dart';
import 'package:nutri_fast/repositories/authentication/authentication_repository_impl.dart';
import 'package:nutri_fast/repositories/food/food_repository.dart';
import 'package:nutri_fast/repositories/food/food_repository_impl.dart';
import 'package:nutri_fast/repositories/nutritionist/nutritionist_repository.dart';
import 'package:nutri_fast/repositories/nutritionist/nutritionist_repository_impl.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationRepository>(() => AuthenticationRepositoryImpl(),
        fenix: true);

    Get.lazyPut<FoodRepository>(() => FoodRepositoryImpl(), fenix: true);
    Get.lazyPut<NutritionistRepository>(() => NutritionistRepositoryImpl(),
        fenix: true);
  }
}
