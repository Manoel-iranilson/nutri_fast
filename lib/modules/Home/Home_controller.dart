import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:nutri_fast/core/widgets/button_nav_custom.dart';
import 'package:nutri_fast/modules/nutritionist/nutritionist_page.dart';
import 'package:nutri_fast/modules/profile/profile_page.dart';

class HomeController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  get selectedIndex => _selectedIndex.value;

  Color backgroundColorNav = Colors.white;

  List<NavigationItem> items = [
    NavigationItem(
      const Icon(
        Icons.home,
        color: Color.fromRGBO(91, 55, 183, 1),
      ),
      const Text(
        'Home',
        style: TextStyle(
            color: Color.fromRGBO(91, 55, 183, 1), fontWeight: FontWeight.bold),
      ),
      const Color.fromRGBO(223, 215, 243, 1),
    ),
    NavigationItem(
        const Icon(Icons.favorite_border,
            color: Color.fromRGBO(201, 55, 157, 1)),
        const Text(
          'Favorite',
          style: TextStyle(
              color: Color.fromRGBO(201, 55, 157, 1),
              fontWeight: FontWeight.bold),
        ),
        const Color.fromRGBO(244, 211, 235, 1)),
    NavigationItem(
        const Icon(
          Icons.search,
          color: Color.fromRGBO(230, 169, 25, 1),
        ),
        const Text(
          'Search',
          style: TextStyle(
              color: Color.fromRGBO(230, 169, 25, 1),
              fontWeight: FontWeight.bold),
        ),
        const Color.fromRGBO(251, 239, 211, 1)),
    NavigationItem(
        const Icon(Icons.person_outline,
            color: Color.fromRGBO(17, 148, 170, 1)),
        const Text(
          'Profile',
          style: TextStyle(
              color: Color.fromRGBO(17, 148, 170, 1),
              fontWeight: FontWeight.bold),
        ),
        const Color.fromRGBO(211, 235, 239, 1))
  ];

  void onTabTapped(int index) {
    _selectedIndex.value = index;
  }
}
