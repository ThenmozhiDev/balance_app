import 'package:flutter/material.dart';

class HRTMedicationScreen extends StatefulWidget {
  @override
  _HRTMedicationScreenState createState() => _HRTMedicationScreenState();
}

class _HRTMedicationScreenState extends State<HRTMedicationScreen> {
  List<String> selectedMedications = [];
  final List<String> medications = [
    'DHEA tablet',
    'Estrogen cream',
    'Estrogen lozenge',
    'Estrogen patch'
  ];

  void toggleMedication(String medication) {
    setState(() {
      if (selectedMedications.contains(medication)) {
        selectedMedications.remove(medication);
      } else {
        selectedMedications.add(medication);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HRT Medication'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value: 0.75,
              backgroundColor: Colors.grey[300],
              color: Colors.teal,
            ),
            SizedBox(height: 16),
            Text(
              "Please select any HRT (if any) that you're currently on",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            if (selectedMedications.isEmpty)
              Container(
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text("Nothing selected"),
              )
            else
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: selectedMedications
                    .map(
                      (med) => Chip(
                        label: Text(med),
                        deleteIcon: Icon(Icons.close),
                        onDeleted: () => toggleMedication(med),
                      ),
                    )
                    .toList(),
              ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  ExpansionTile(
                    title: Text("Bioidentical/compounded HRT"),
                    children: medications
                        .map(
                          (med) => ListTile(
                            title: Text(med),
                            onTap: () => toggleMedication(med),
                          ),
                        )
                        .toList(),
                  ),
                  ExpansionTile(
                    title: Text("Combination patches"),
                    children: [Text("Example Item")],
                  ),
                  ExpansionTile(
                    title: Text("Combination tablets"),
                    children: [Text("Example Item")],
                  ),
                  ExpansionTile(
                    title: Text("Estrogen gel"),
                    children: [Text("Example Item")],
                  ),
                  ExpansionTile(
                    title: Text("Estrogen patches"),
                    children: [Text("Example Item")],
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
