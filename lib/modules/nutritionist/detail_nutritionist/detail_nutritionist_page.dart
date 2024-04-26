import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './detail_nutritionist_controller.dart';

class DetailNutritionistPage extends GetView<DetailNutritionistController> {
  const DetailNutritionistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Obx(() => controller.loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(controller.nutritionist!.image),
                      ),
                    ),
                    Text(
                      controller.nutritionist!.name,
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Estrelas: ${controller.nutritionist!.rating}"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Especialidade: ${controller.nutritionist!.specialty}"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Atuação: ${controller.nutritionist!.experience}"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("E-mail: ${controller.nutritionist!.email}"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Comentarios dos pacientes:"),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: controller.nutritionist!.comments
                          .map((e) => Text("- $e"))
                          .toList(),
                    )
                  ],
                )))),
    );
  }
}
