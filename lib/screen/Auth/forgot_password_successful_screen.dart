import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordScreenSuccessfulScreen extends StatefulWidget {
  const ForgotPasswordScreenSuccessfulScreen({Key? key});

  @override
  State<ForgotPasswordScreenSuccessfulScreen> createState() =>
      _ForgotPasswordScreenSuccessfulScreenState();
}

class _ForgotPasswordScreenSuccessfulScreenState
    extends State<ForgotPasswordScreenSuccessfulScreen> {
  String email = "";

  final TextEditingController emailController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

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
          "Forgot Password",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 15.w),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    "assets/svg/approved.svg",
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  textAlign: TextAlign.center,
                  "We have sent a password recover intructions to your email",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  textAlign: TextAlign.center,
                  "Did not recive the email? check you spam filter or resend",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8F8F8F),
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
