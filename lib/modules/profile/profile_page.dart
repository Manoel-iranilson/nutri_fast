import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:nutri_fast/core/theme/app_colors.dart';
import 'package:nutri_fast/core/theme/app_images.dart';
import 'package:nutri_fast/core/widgets/button.dart';
import './profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(image: AssetImage(AppImages.error)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Manoel Iranilson",
                  style: TextStyle(fontSize: 20),
                ),
                Text("(88) 99668-5478"),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [Text("Nutricionista"), Text("Natalia")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [Text("Peso"), Text("78 KG")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [Text("Altura"), Text("1.80")],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Button(text: "Sair", onPress: () {})
              ],
            ),
          ),
        ));
  }
}
