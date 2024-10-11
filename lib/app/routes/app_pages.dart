import 'package:get/get.dart';
import 'package:kazakopiteori/app/modules/home/views/landing_page.dart';
import 'package:kazakopiteori/app/modules/home/views/login.dart';
import 'package:kazakopiteori/app/modules/home/views/signin_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.LANDINGPAGE,
      page: () => landing_page(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => login(),
    ),
    GetPage(
      name: AppRoutes.SIGNIN,
      page: () => signin(),
    ),
  ];
}
