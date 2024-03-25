import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:nutri_fast/core/routes/app_pages.dart';
import 'package:nutri_fast/core/theme/app_colors.dart';
import 'package:nutri_fast/core/theme/app_images.dart';
import 'package:nutri_fast/core/widgets/button.dart';
import 'package:nutri_fast/core/widgets/textField.dart';
import 'package:nutri_fast/modules/authentication/authentication_pages.dart';
import './login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

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
                              const InputTextField(label: "Email"),
                              const SizedBox(height: 10),
                              const InputTextField(label: "Senha"),
                              const SizedBox(height: 40),
                              Button(
                                  width: constraints.maxWidth,
                                  height: 50,
                                  onPress: () {
                                    Get.toNamed(AppPages.home);
                                  },
                                  text: "Entrar"),
                              const SizedBox(height: 20),
                              Button(
                                  width: constraints.maxWidth,
                                  height: 60,
                                  type: AZButtonTypes.outline,
                                  onPress: () {
                                    Get.toNamed(AuthenticationPages.register);
                                  },
                                  text: "Registra-se"),
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
