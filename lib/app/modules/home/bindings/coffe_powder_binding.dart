import 'package:get/get.dart';
import '../controllers/home_controller.dart'; // Or any other controller needed

class CoffeePowderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
