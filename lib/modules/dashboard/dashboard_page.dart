import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:nutri_fast/models/food_model.dart';
import 'package:nutri_fast/modules/dashboard/widgets/card.dart';
import './dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Text("Aqui"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Total de calorias consumidas(semana)",
              style: TextStyle(fontSize: 18),
            ),
            Obx(() => Text(
                  controller.totalCalories.toString(),
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.w700),
                )),
            Obx(() => loadGrafico()),
            Obx(
              () {
                if (controller.loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (controller.listfoods == null) {
                  return const Center(
                    child: Text("Não há Refeições"),
                  );
                }

                return Column(
                    children: controller.listfoods!
                        .map((item) => CardFood(
                              item: item,
                            ))
                        .toList());
              },
            )
          ],
        ),
      ),
    );
  }

  loadGrafico() {
    return (controller.totalCalories == 0)
        ? Container(
            width: Get.width,
            height: 200,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Container(
            child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                  sectionsSpace: 5,
                  centerSpaceRadius: 50,
                  sections: showingSections(),
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        // controller.filterValues(-1);
                        return;
                      }
                      controller.filterValues(
                          pieTouchResponse.touchedSection!.touchedSectionIndex);
                    },
                  )),
            ),
          ));
  }

  List<PieChartSectionData> showingSections() {
    if (controller.listfoods == null || controller.listfoods!.isEmpty) {
      return [];
    }

    Map<String, int> caloriesByCategory = {};
    int totalCalories = 0;
    for (var food in controller.listfoods!) {
      caloriesByCategory[food.type] ??= 0;
      caloriesByCategory[food.type] =
          caloriesByCategory[food.type]! + food.calories;
      totalCalories += food.calories;
    }

    List<double> percentages = [];
    for (var category in caloriesByCategory.keys) {
      double percentage = (caloriesByCategory[category]! / totalCalories) * 100;
      percentages.add(percentage);
    }

    List<PieChartSectionData> sections =
        List.generate(caloriesByCategory.length, (i) {
      final isTouched = i == 1;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      final category = caloriesByCategory.keys.elementAt(i);

      return PieChartSectionData(
        color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
            .withOpacity(1.0),
        value: percentages[i],
        title: '$category: ${percentages[i].toStringAsFixed(1)}%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          shadows: shadows,
        ),
      );
    });

    return sections;
  }
}
