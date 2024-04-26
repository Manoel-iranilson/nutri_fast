import 'package:get/get.dart';
import 'package:nutri_fast/modules/Home/Home_bindings.dart';
import 'package:nutri_fast/modules/Home/Home_page.dart';
import 'package:nutri_fast/modules/Home/home_pages.dart';
import 'package:nutri_fast/modules/authentication/authentication_pages.dart';
import 'package:nutri_fast/modules/food/food_bindings.dart';
import 'package:nutri_fast/modules/food/food_page.dart';
import 'package:nutri_fast/modules/nutritionist/nutritionist_pages.dart';

class AppPages {
  static const String home = '/home';
  static const String food = '/food';

  static final routes = [
    ...AuthenticationPages.routes,
    ...HomePages.routes,
    ...NutritionistPages.routes,
    GetPage(
      name: food,
      page: () => const FoodPage(),
      binding: FoodBindings(),
    ),
  ];
}
