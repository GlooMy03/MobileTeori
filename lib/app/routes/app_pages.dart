import 'package:get/get.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/coffe_powder_view.dart'; // Ensure this file exists
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/coffe_powder_binding.dart'; // Ensure this matches your binding file

part 'app_routes.dart';  // This links to 'app_routes.dart'

abstract class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.HOME, // This references the constant defined in app_routes.dart
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.COFFEE_POWDER, // This references the constant defined in app_routes.dart
      page: () => CoffeePowderView(),
      binding: CoffeePowderBinding(),
    ),
  ];
}
