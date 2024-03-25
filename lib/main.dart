import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutri_fast/core/application/application_bindings.dart';
import 'package:nutri_fast/core/routes/app_pages.dart';
import 'package:nutri_fast/modules/authentication/authentication_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "nutrifast",
      getPages: AppPages.routes,
      initialRoute: AuthenticationPages.login,
      initialBinding: ApplicationBindings(),
    );
  }
}
