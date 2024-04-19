import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './food_controller.dart';

class FoodPage extends GetView<FoodController> {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FoodPage'),
      ),
      body: Container(),
    );
  }
}
