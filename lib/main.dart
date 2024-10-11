import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import the GetX package
import 'package:kazakopiteori/app/routes/app_routes.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Use GetMaterialApp instead of MaterialApp
      debugShowCheckedModeBanner: false,
      title: 'Kaza Kopi Nusantara',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.LANDINGPAGE,
      getPages: AppPages.pages, // getPages is defined here in GetMaterialApp
    );
  }
}
