import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Coffee App',
      initialRoute: AppRoutes.HOME, // Set the initial route using AppRoutes constant
      getPages: AppPages.routes, // Connect to your routes
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
