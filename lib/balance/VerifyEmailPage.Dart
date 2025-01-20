import 'package:flutter/material.dart';

class VerifyEmailPage extends StatefulWidget {
  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  void _verifyEmail() {
    final email = _emailController.text;
    final code = _codeController.text;
    // Add email verification logic here
    print('Verifying email: $email with code: $code');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
             onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 100.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _codeController,
              decoration: InputDecoration(labelText: 'Verification Code'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _verifyEmail,
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
