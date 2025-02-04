import 'package:balance_app/pages/screens/WhoWeAreScreen.Dart';
import 'package:flutter/material.dart';
import 'package:balance_app/pages/forms/LoginScreen.Dart';

class BalanceAppScreen extends StatefulWidget {
  const BalanceAppScreen({super.key});

  @override
  _BalanceAppScreenState createState() => _BalanceAppScreenState();
}

class _BalanceAppScreenState extends State<BalanceAppScreen> {
  final ValueNotifier<double> _widthNotifier = ValueNotifier<double>(0.0);
  bool _showMessage = false;

  // Toggle the width between 0 and 200 when the button is pressed
  void _toggleWidth() {
    _widthNotifier.value = _widthNotifier.value == 0.0 ? 200.0 : 0.0;
  }

  void _toggleMessage() {
    setState(() {
      _showMessage = !_showMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8EBF7), // Light pink background
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                      ],
                    ),
                    const SizedBox(height: 30),
                    // Description text
                    GestureDetector(
                      onTap: _toggleMessage,
                      child: !_showMessage
                          ? const Text(
                              'Read a message from Louise',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF4C48B7),
                              ),
                            )
                          : const Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 26.0),
                              child: Text(
                                "\n\nI'm Dr Louise Newson - GP, Menopause Specialist, and Founder of Balance. Welcome! "
                                "My initial consultation with my patients is usually about understanding their overall health, medical history, "
                                "and anything that may impact the menopause and how it's treated. "
                                "So once we have a little more information about you, we'll be able to help you understand more about your body - "
                                "we'll always keep your information safe so that you feel comfortable sharing it with us. "
                                "Remember, this app should never replace an in-person consultation with your doctor.",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),

                      // : Text(""),
                    ),
                    const SizedBox(height: 20),
                    // Show the message if toggled
                    // if (_showMessage)

                    // Main illustration
                    Image.asset(
                      'assets/images/firstpage.jpg', // Replace with your saved image path
                      height: 250,
                      width: 400,
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
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
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
