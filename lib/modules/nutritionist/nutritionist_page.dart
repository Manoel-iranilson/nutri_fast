import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './nutritionist_controller.dart';

class NutritionistPage extends GetView<NutritionistController> {
    
    const NutritionistPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('NutritionistPage'),),
            body: Container(),
        );
    }
}