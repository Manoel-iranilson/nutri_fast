import 'package:get/get.dart';
import 'package:nutri_fast/modules/Home/Home_bindings.dart';
import 'package:nutri_fast/modules/Home/Home_page.dart';
import 'package:nutri_fast/modules/authentication/authentication_pages.dart';

class AppPages {
  static const String home = '/home';
  static final routes = [
    ...AuthenticationPages.routes,
    GetPage(
      name: home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
