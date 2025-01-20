import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Onboarding',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF0b5369),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Almost there!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 16),
            Card(
              color: const Color(0xFFFDE8E9), // Light pink background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Here's where we ask for some details that'll be helpful for any healthcare professional appointments you may have.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "In your profile there's a graph where you'll be able to see your symptom information all in one place once you start to record your symptoms in your journal.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "There’s also a balance Menopause Symptom Questionnaire©, which is a scale that’s often used by healthcare professionals around the world.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/images/balance_mobile.jpg', // Replace with your image path
                height: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
