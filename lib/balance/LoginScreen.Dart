import 'package:flutter/material.dart';
import 'BalanceAppScreen.Dart';
import 'OnboardingPage.Dart';
import 'ResetPasswordPage.Dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BalanceAppScreen()),
                      );},
        ),
        title: Text('Log In', style: TextStyle(
      color: Colors.white, // White color for the title text
    )),
        backgroundColor: Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 100.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView( // Wrap the body content in ListView to make it scrollable
          children: [
             SizedBox(height: 148),
            Text(
              'Your email',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'e.g. sandra@example.com',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your password',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResetPasswordPage()),
            );
              },
              child: Text('I forgot my password'),
            ),
            SizedBox(height: 16), // Adds space before the button
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPage()),
            );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF353fbb).withOpacity(0.1),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
