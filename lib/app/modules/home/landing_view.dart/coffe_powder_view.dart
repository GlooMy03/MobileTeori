import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/views/home_view.dart' as stock;
import 'package:flutter_application_1/app/modules/home/views/Order.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class CoffeePowderView extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    // Mendapatkan tinggi layar
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                color: Color(0xFF046E79),
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            'Location',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'MALANG, JAWA TIMUR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.search, color: Colors.black),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  hintStyle: TextStyle(color: Colors.black54),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: screenHeight * 0.25,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/special.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(HomeView());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 55.0),
                      child: Text(
                        'Minuman',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF495048),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(CoffeePowderView());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 55.0),
                      child: Text(
                        'Bubuk Kopi',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF495048),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 240.0),
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFF495048),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: Get.width * 0.3,
                  ),
                ),
              ),
              SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildCoffeeCard('Robusta', 'Tersedia', 'assets/images/11.png'),
                  buildCoffeeCard('Arabic', 'Tersedia', 'assets/images/4.1.png'),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF495048)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Color(0xFF495048)),
            label: 'Cart',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xFF495048),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Get.to(HomeView());
          } else if (index == 1) {
            // Uncomment ini jika Anda sudah membuat CartView
            // Get.to(CartView());
          }
        },
      ),
    );
  }

  Widget buildCoffeeCard(String title, String availability, String imagePath) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 100, fit: BoxFit.cover),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            color: Color(0xFF495048),
            child: Text(
              availability,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
