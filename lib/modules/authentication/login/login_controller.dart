import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutri_fast/models/authentication/authentication_model.dart';
import 'package:nutri_fast/modules/Home/home_pages.dart';
import 'package:nutri_fast/repositories/authentication/authentication_repository.dart';
import 'package:nutri_fast/repositories/authentication/params/register_params.dart';

class LoginController extends GetxController {
  final AuthenticationRepository authenticationRepository;

  LoginController({required this.authenticationRepository});

  var formKey = GlobalKey<FormState>();

  final _email = "".obs;
  String get email => _email.value.toLowerCase();
  set email(value) => _email(value);

  final _password = "".obs;
  get password => _password.value;
  set password(value) => _password(value);

  final _confirmPassword = "".obs;
  get confirmPassword => _confirmPassword.value;
  set confirmPassword(value) => _confirmPassword(value);

  bool validate() {
    if (formKey.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  login() async {
    try {
      final params = RegisterParams(email: email, password: password);
      final authenticationModel = await authenticationRepository.login(params);

      final token = authenticationModel.access_token;
      Get.offAllNamed(HomePages.home);
    } catch (e) {
      print("aqui: erro");
    }
  }
}
