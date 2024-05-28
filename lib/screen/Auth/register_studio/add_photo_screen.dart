import 'package:entatto_ui/screen/Auth/register_studio/question_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPhotoScreen extends StatelessWidget {
  const AddPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff1849D6),
          ),
        ),
        title: Text(
          "Profile",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Adding photo to make your profile stuning",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 40),
            Center(
              child: Image.asset("assets/images/profile/profile.png"),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              "Ryan Bara",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              "New York , USA",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w200,
                  color: Color(0xff797979)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2.4.h),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionOneScreen()),
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
