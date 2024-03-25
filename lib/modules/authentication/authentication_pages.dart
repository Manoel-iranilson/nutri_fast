import 'package:get/route_manager.dart';
import 'package:nutri_fast/modules/authentication/login/login_bindings.dart';
import 'package:nutri_fast/modules/authentication/login/login_page.dart';
import 'package:nutri_fast/modules/authentication/register/register_bindings.dart';
import 'package:nutri_fast/modules/authentication/register/register_page.dart';

class AuthenticationPages {
  static const String login = '/login';
  static const String register = '/register';

  static final routes = [
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: register,
      page: () => const RegisterPage(),
      binding: RegisterBindings(),
    ),
  ];
}
