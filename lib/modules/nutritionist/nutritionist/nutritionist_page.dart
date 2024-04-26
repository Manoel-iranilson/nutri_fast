import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:nutri_fast/core/theme/app_colors.dart';
import 'package:nutri_fast/modules/nutritionist/nutritionist/widgets/card.dart';
import 'nutritionist_controller.dart';

class NutritionistPage extends GetView<NutritionistController> {
  const NutritionistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Escolha sua Nutricionista',
          ),
        ),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: AppColors.primary,
      ),
      body: SingleChildScrollView(child: Obx(
        () {
          if (controller.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (controller.listNutritionists!.isEmpty) {
            return const Center(
              child: Text("Não há Nutricionistas"),
            );
          }

          return Column(
              children: controller.listNutritionists!
                  .map((item) => CardNutri(item: item))
                  .toList());
        },
      )),
    );
  }
}
