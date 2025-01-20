import 'package:flutter/material.dart';

import 'HelpButtonDemo.Dart';
import 'LoginScreen.Dart';
import 'WhoWeAreScreen.Dart';

class BalanceAppScreen extends StatelessWidget {
  final ValueNotifier<double> _widthNotifier = ValueNotifier<double>(0.0);

  // Toggle the width between 0 and 200 when the button is pressed
  void _toggleWidth() {
    _widthNotifier.value = _widthNotifier.value == 0.0 ? 200.0 : 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8EBF7), // Light pink background
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo and text
            Column(
              children: [
                Image.asset(
                  'assets/images/balance.jpg', // Replace with your saved image path
                  height: 100,
                ),
                // Text(
                //   'balance',
                //   style: TextStyle(
                //     fontSize: 40,
                //     fontWeight: FontWeight.bold,
                //     color: const Color(0xFF2D3948), // Dark teal color
                //   ),
                // ),
                // const SizedBox(height: 5),
                // Text(
                //   'by Newson Health',
                //   style: TextStyle(
                //     fontSize: 16,
                //     color: const Color(0xFF2D3948),
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 30),
            // Description text
            Text(
              'Read a message from Louise',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF4C48B7),
              ),
            ),
            const SizedBox(height: 20),
            // Main illustration
            Image.asset(
              'assets/images/firstpage.jpg', // Replace with your saved image path
              height: 250,
              width: 400,
            ),

            const SizedBox(height: 40),
            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  // HelpButtonDemo(),
                  ElevatedButton(
                    onPressed: () {
                      // Add sign-up action
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WhoWeAreScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4C48B7), // Purple color
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                      // Add log-in action
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF4C48B7)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Center(
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF4C48B7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BalanceAppScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
