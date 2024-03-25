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
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const InputTextField(label: "Telefone"),
                              const SizedBox(height: 10),
                              const InputTextField(label: "Email"),
                              const SizedBox(height: 10),
                              const InputTextField(label: "Senha"),
                              const SizedBox(height: 10),
                              const InputTextField(label: "Confirme sua senha"),
                              const SizedBox(height: 40),
                              Button(
                                  width: constraints.maxWidth,
                                  height: 40,
                                  onPress: () {},
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
