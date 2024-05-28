import 'package:entatto_ui/screen/Auth/forgot_password_successful_screen.dart';
import 'package:entatto_ui/screen/Auth/log_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/widget_support.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    "assets/svg/lock.svg",
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(height: 15.h),
                Center(
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  textAlign: TextAlign.center,
                  "Enter your registered email below to receive password reset instruction",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8F8F8F),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "Email Address",
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "\u274C Please enter your email address";
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return '\u274C Please enter a valid email address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    focusColor: Color(0xffE8EDFB),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(
                          (0xff1849D6),
                        ),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(
                          (0xffDEDEDE),
                        ),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(
                          (0xff797979),
                        ),
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(
                          (0xffDEDEDE),
                        ),
                      ),
                    ),
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    hintText: "Input email address",
                    hintStyle: TextStyle(
                      color: Color(0xff858383),
                    ),
                    suffixIcon: Icon(FontAwesomeIcons.envelope),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate())
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordScreenSuccessfulScreen(),
                        ),
                      );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 54.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Color(0xff407BFF),
                      border: Border.all(color: Color(0xffDEDEDE)),
                    ),
                    child: Center(
                      child: Text(
                        "SEND",
                        textAlign: TextAlign.center,
                        style: AppWidget.signUpAndLoginButtonTextStyle(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.2.h,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You remember your password? ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        " Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff1849D6),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
