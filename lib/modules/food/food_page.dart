import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './food_controller.dart';

class FoodPage extends GetView<FoodController> {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.food!.name),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfP0qpxFeUjAtRt3TGlDhZ4SIOrHRg1sseRKcvFKKbvw&s",
                    // width: MediaQuery.of(context).size.width,
                    height: 60,
                    width: 10,
                    fit: BoxFit.fill),
              ),
            ),
            Text(
              controller.food!.type,
              style: TextStyle(
                  fontSize: 40,
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                      .withOpacity(1.0)),
            ),
            Text(
              "Calorias: ${controller.food!.calories}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Ingredientes:",
              style: TextStyle(fontSize: 20),
            ),
            Column(
                children: controller.food!.ingredients
                    .map((item) => Text(
                          " - $item",
                          style: TextStyle(fontSize: 20),
                        ))
                    .toList())
          ],
        ),
      ),
    );
  }
}
