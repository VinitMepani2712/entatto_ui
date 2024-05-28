import 'package:flutter/material.dart';

class QuestionTwoScreen extends StatefulWidget {
  const QuestionTwoScreen({super.key});

  @override
  State<QuestionTwoScreen> createState() => _QuestionTwoScreenState();
}

class _QuestionTwoScreenState extends State<QuestionTwoScreen> {
  String? _selectedBusinessType;

  final List<String> _businessTypes = [
    'The shop manager is responsible for handling all bookings',
    'Each artist at the studio manages their own bookings',
    'I have a booking assistant that manages my bookings',
    "I'm an independent artist and manage my own bookings",
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
              'How does your business manage bookings?',
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
