import 'package:entatto_ui/screen/Auth/register_studio/question_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionTwoScreen()),
              ),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 10.w, right: 10.w),
                width: MediaQuery.of(context).size.width / 0.5.w,
                height: 54.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1848D6),
                  border: Border.all(color: const Color(0xffDEDEDE)),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
