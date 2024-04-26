import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:nutri_fast/core/widgets/button_nav_custom.dart';
import 'package:nutri_fast/modules/Home/widgets/tab_navigator.dart';
import 'package:nutri_fast/modules/dashboard/dashboard_page.dart';
import 'package:nutri_fast/modules/nutritionist/nutritionist/nutritionist_page.dart';
import 'package:nutri_fast/modules/profile/profile_page.dart';
import './Home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => Visibility(
              visible: controller.selectedIndex == 0,
              child: const DashboardPage(),
            ),
          ),
          Obx(() => Visibility(
                visible: controller.selectedIndex == 1,
                child: const NutritionistPage(),
              )),
          Obx(() => Visibility(
                visible: controller.selectedIndex == 2,
                child: const ProfilePage(),
              )),
          Obx(() => Visibility(
                visible: controller.selectedIndex == 3,
                child: const ProfilePage(),
              ))
        ],
      ),
      bottomNavigationBar: ButtonNavCustom(),
    );
  }
}
