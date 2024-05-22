import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:nutri_fast/core/theme/app_colors.dart';
import 'package:nutri_fast/core/theme/app_images.dart';
import 'package:nutri_fast/core/widgets/button.dart';
import 'package:nutri_fast/core/widgets/textField.dart';
import 'package:nutri_fast/modules/authentication/authentication_pages.dart';
import './register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      Container(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight / 4,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(100))),
                        child: const Center(
                          child: Image(image: AssetImage(AppImages.logo)),
                        ),
                      ),
                      Form(
                        key: controller.formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InputTextField(
                                label: "Telefone",
                                onChanged: (value) => {},
                              ),
                              const SizedBox(height: 10),
                              InputTextField(
                                label: "Email",
                                onChanged: (value) {
                                  controller.email = value;
                                },
                                validator: (value) {
                                  const pattern =
                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                  RegExp regex = RegExp(pattern);
                                  if (!regex.hasMatch(value!)) {
                                    return 'Insira um email válido';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10),
                              InputTextField(
                                label: "Senha",
                                onChanged: (value) {
                                  controller.password = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Insira sua senha";
                                  }
                                  if (value.length < 6) {
                                    return "A senha deve conter no mínimo 6 caracteres";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10),
                              InputTextField(
                                label: "Confirme sua senha",
                                onChanged: (value) =>
                                    controller.confirmPassword = value,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Confirme sua senha";
                                  }
                                  if (value != controller.password) {
                                    return "A senha não são iguais";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 40),
                              Button(
                                  width: constraints.maxWidth,
                                  height: 40,
                                  onPress: () {
                                    if (controller.validate()) {
                                      controller.register();
                                    }
                                  },
                                  text: "Cadastra-se"),
                              const SizedBox(height: 10),
                              Button(
                                  width: constraints.maxWidth,
                                  height: 40,
                                  onPress: () {
                                    Get.offNamed(AuthenticationPages.login);
                                  },
                                  text: "Voltar"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight / 8,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                            )),
                        child: const Center(
                          child: Image(image: AssetImage(AppImages.nf)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
