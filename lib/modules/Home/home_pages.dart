import 'package:get/get.dart';
import 'package:nutri_fast/modules/Home/Home_bindings.dart';
import 'package:nutri_fast/modules/Home/Home_page.dart';
import 'package:nutri_fast/modules/dashboard/dashboard_bindings.dart';
import 'package:nutri_fast/modules/nutritionist/nutritionist_bindings.dart';
import 'package:nutri_fast/modules/profile/profile_bindings.dart';

class HomePages {
  static const String home = '/home';

  static final routes = [
    GetPage(name: home, page: () => const HomePage(), bindings: [
      HomeBindings(),
      NutritionistBindings(),
      ProfileBindings(),
      DashboardBindings()
    ]),
  ];
}
