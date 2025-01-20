import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  void _requestReset() {
    final email = _emailController.text;
    // Add your reset logic here
    print('Requesting reset for: $email');
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
          'Reset Password',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 100.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 8.0),
            Text(
              'Your email',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.yellow[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _requestReset,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: const Color(0xFF4C47F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Request reset',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

