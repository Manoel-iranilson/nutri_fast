import 'package:get/get.dart';
import './Home_controller.dart';

class HomeBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(HomeController());
    }
}