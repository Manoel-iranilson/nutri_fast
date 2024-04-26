import 'package:get/get.dart';
import 'package:nutri_fast/modules/nutritionist/detail_nutritionist/detail_nutritionist_bindings.dart';
import 'package:nutri_fast/modules/nutritionist/detail_nutritionist/detail_nutritionist_page.dart';
import 'package:nutri_fast/modules/nutritionist/nutritionist/nutritionist_bindings.dart';
import 'package:nutri_fast/modules/nutritionist/nutritionist/nutritionist_page.dart';

class NutritionistPages {
  static const String nutritionist = '/nutritionist';
  static const String detail_nutritionist = '/detail_nutritionist';

  static final routes = [
    GetPage(
        name: nutritionist,
        page: () => const NutritionistPage(),
        binding: NutritionistBindings()),
    GetPage(
        name: detail_nutritionist,
        page: () => const DetailNutritionistPage(),
        binding: DetailNutritionistBindings()),
  ];
}
