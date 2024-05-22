import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nutri_fast/modules/authentication/authentication_pages.dart';
import 'package:nutri_fast/repositories/authentication/authentication_repository.dart';
import 'package:nutri_fast/repositories/authentication/params/register_params.dart';

class RegisterController extends GetxController {
  final AuthenticationRepository authenticationRepository;

  RegisterController({required this.authenticationRepository});

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

  register() async {
    try {
      final params = RegisterParams(email: email, password: password);
      await authenticationRepository.register(params);
      Fluttertoast.showToast(
          msg: "Resgistrado com sucesso",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      Get.back();
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } finally {}
  }
}
