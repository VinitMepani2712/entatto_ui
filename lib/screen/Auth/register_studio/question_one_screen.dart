import 'package:flutter/material.dart';

class QuestionOneScreen extends StatefulWidget {
  const QuestionOneScreen({super.key});

  @override
  State<QuestionOneScreen> createState() => _QuestionOneScreenState();
}

class _QuestionOneScreenState extends State<QuestionOneScreen> {
  String? _selectedBusinessType;

   final List<String> _businessTypes = [
    'A studio with 5+ artists',
    'A studio with less than 5 artists',
    'A private studio of independent artists',
    'Independent artist running a private studio',
    'Private Studio',
    'Resident artist at a studio',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What type of tattoo business are you running?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _businessTypes.length,
                itemBuilder: (context, index) {
                  return RadioListTile<String>(
                    value: _businessTypes[index],
                    groupValue: _selectedBusinessType,
                    title: Text(_businessTypes[index]),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedBusinessType = value;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
