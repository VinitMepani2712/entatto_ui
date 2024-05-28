import 'package:entatto_ui/screen/Auth/register_artist/style_your_work_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StyleScreen()),
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
