import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './Home_controller.dart';

class HomePage extends GetView<HomeController> {
    
    const HomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('HomePage'),),
            body: Container(),
        );
    }
}