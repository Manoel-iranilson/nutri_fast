import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final Widget tabItem;

  const TabNavigator(
      {super.key, required this.navigatorKey, required this.tabItem});

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(builder: (context) => tabItem);
        });
  }
}
