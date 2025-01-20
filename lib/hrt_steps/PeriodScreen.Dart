import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PeriodScreen(),
    );
  }
}

class PeriodScreen extends StatefulWidget {
  @override
  _PeriodScreenState createState() => _PeriodScreenState();
}

class _PeriodScreenState extends State<PeriodScreen> {
  String? selectedOption;
  String warningMessage =
      "Your currently selected answer will disable the Period Journal feature.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Periods'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add back navigation functionality
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How would you describe your periods?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                RadioListTile<String>(
                  value: "They're regular",
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  title: Text("They're regular"),
                ),
                RadioListTile<String>(
                  value: "They're erratic or irregular",
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  title: Text("They're erratic or irregular"),
                ),
                RadioListTile<String>(
                  value: "I don't have periods",
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  title: Text("I don't have periods"),
                ),
              ],
            ),
            if (selectedOption == "I don't have periods")
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.warning_amber_rounded, color: Colors.orange),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        warningMessage,
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Navigate to HRT screen
              },
              child: Text("Next: HRT"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {
                // Add "Save and continue later" functionality
              },
              child: Text(
                "Save and continue later",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
