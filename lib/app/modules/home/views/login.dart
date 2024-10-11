import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kazakopiteori/app/modules/home/views/signin_page.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png',
                      height: 100), // Adjust the path if needed
                  SizedBox(height: 30),

                  // App Name
                  Text(
                    "Kaza Kopi Nusantara",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 10),

                  // Login Text
                  Text(
                    "Login to your account",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // Email TextField
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 20),

            // Password TextField
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                hintText: 'Enter your password',
              ),
            ),

            SizedBox(height: 20),

            // Forgot Password Link
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Add Forgot Password functionality
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Login Button
            ElevatedButton(
              onPressed: () {
                // Add login functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800], // Button color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 20),

            // Sign Up Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Get.to(signin());
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
