import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutri_fast/modules/Home/Home_controller.dart';

class ButtonNavCustom extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        padding: EdgeInsets.only(left: 8, top: 4, bottom: 4, right: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)]),
        width: Get.width,
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: controller.items.map((item) {
              var itemIndex = controller.items.indexOf(item);
              return GestureDetector(
                onTap: () {
                  controller.onTabTapped(itemIndex);
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: 50,
                  width: controller.selectedIndex == itemIndex ? 120 : 50,
                  padding: controller.selectedIndex == itemIndex
                      ? EdgeInsets.only(left: 16, right: 16)
                      : null,
                  decoration: controller.selectedIndex == itemIndex
                      ? BoxDecoration(
                          color: item.color,
                          borderRadius: BorderRadius.all(Radius.circular(50)))
                      : null,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconTheme(
                            data: IconThemeData(
                              size: 24,
                              color: controller.selectedIndex == itemIndex
                                  ? controller.backgroundColorNav
                                  : Colors.black,
                            ),
                            child: item.icon,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: controller.selectedIndex == itemIndex
                                ? DefaultTextStyle.merge(
                                    style: TextStyle(
                                        color: controller.backgroundColorNav),
                                    child: item.title)
                                : Container(),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ));
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;
  final Color color;

  NavigationItem(this.icon, this.title, this.color);
}
