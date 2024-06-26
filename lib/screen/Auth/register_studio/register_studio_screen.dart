import 'package:entatto_ui/screen/Auth/log_in_screen.dart';
import 'package:entatto_ui/screen/Auth/register_studio/social_media_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widget/widget_support.dart';

class StudioSignUpScreen extends StatefulWidget {
  const StudioSignUpScreen({Key? key}) : super(key: key);

  @override
  State<StudioSignUpScreen> createState() => _StudioSignUpScreenState();
}

class _StudioSignUpScreenState extends State<StudioSignUpScreen> {
  bool isIconPressed = true;
  bool isPasswordVisible1 = false;
  bool isPasswordVisible2 = false;
  String name = "";
  String email = "";
  String password = "";
  String confirmPassword = "";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

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
          "Studio",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: Form(
            key: _formkey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your name"),
                  SizedBox(height: 10.h),
                  TextFormField(
                    controller: nameController,
                    validator: (value) => value == null || value.isEmpty
                        ? '\u274C Please enter your name'
                        : null,
                    decoration: InputDecoration(
                      focusColor: Color(0xffE8DFB),
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
                        borderSide: BorderSide(color: Color((0xffDEDEDE))),
                      ),
                      fillColor: Color.fromRGBO(64, 123, 255, 0.03),
                      filled: true,
                      hintText: "Input your first name",
                      hintStyle: TextStyle(color: Color(0xff858383)),
                      suffixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  Text("Email address"),
                  SizedBox(height: 10.h),
                  TextFormField(
                    controller: emailController,
                    validator: (value) => value == null || value.isEmpty
                        ? '\u274C Please enter your email address'
                        : !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value)
                            ? '\u274C Please enter a valid email address'
                            : null,
                    decoration: InputDecoration(
                      focusColor: Color(0xffE8DFB),
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
                        borderSide: BorderSide(color: Color((0xffDEDEDE))),
                      ),
                      fillColor: Color.fromRGBO(64, 123, 255, 0.03),
                      filled: true,
                      hintText: "Input your email",
                      hintStyle: TextStyle(color: Color(0xff858383)),
                      suffixIcon: Icon(FontAwesomeIcons.envelope),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  Text("Password"),
                  SizedBox(height: 10.h),
                  TextFormField(
                    validator: (value) => value == null || value.isEmpty
                        ? "\u274C Enter your password"
                        : value.length < 8
                            ? "\u274C Password must be at least 8 characters long , 1 Uppercase letter , 1 Lowercase letter , 1 Special Character "
                            : null,
                    controller: passwordController,
                    obscureText: !isPasswordVisible1,
                    decoration: InputDecoration(
                      focusColor: Color(0xffE8DFB),
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
                        borderSide: BorderSide(color: Color((0xffDEDEDE))),
                      ),
                      fillColor: Color.fromRGBO(64, 123, 255, 0.03),
                      filled: true,
                      hintText: "Input your password",
                      hintStyle: TextStyle(color: Color(0xff858383)),
                      suffixIcon: GestureDetector(
                        onTap: () => setState(() {
                          isPasswordVisible1 = !isPasswordVisible1;
                        }),
                        child: isPasswordVisible1
                            ? Icon(FontAwesomeIcons.eye)
                            : Icon(FontAwesomeIcons.eyeSlash),
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  Text("Confirm Password"),
                  SizedBox(height: 10.h),
                  TextFormField(
                    validator: (value) => value != passwordController.text
                        ? "\u274C Enter password does not match"
                        : null,
                    controller: confirmPasswordController,
                    obscureText: !isPasswordVisible2,
                    decoration: InputDecoration(
                      focusColor: Color(0xffE8DFB),
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
                        borderSide: BorderSide(color: Color((0xffDEDEDE))),
                      ),
                      fillColor: Color.fromRGBO(64, 123, 255, 0.03),
                      filled: true,
                      hintText: "Input your confirm password",
                      hintStyle: TextStyle(color: Color(0xff858383)),
                      suffixIcon: GestureDetector(
                        onTap: () => setState(() {
                          isPasswordVisible2 = !isPasswordVisible2;
                        }),
                        child: isPasswordVisible2
                            ? Icon(FontAwesomeIcons.eye)
                            : Icon(FontAwesomeIcons.eyeSlash),
                      ),
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
                            builder: (context) => SocialMediaScreen(),
                          ),
                        );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      width: 320.w,
                      height: 54.h,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff407BFF),
                        border: Border.all(color: const Color(0xffDEDEDE)),
                      ),
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          textAlign: TextAlign.center,
                          style: AppWidget.signUpAndLoginButtonTextStyle(),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 40.h,
                          color: Color(0xffD1D3D4),
                          indent: 20.w,
                          endIndent: 20.w,
                        ),
                      ),
                      Text("Or Sign Up with"),
                      Expanded(
                        child: Divider(
                          height: 40.h,
                          color: Color(0xffD1D3D4),
                          indent: 20.w,
                          endIndent: 20.w,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width.w,
                    height: 54.h,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: const Color(0xffDEDEDE)),
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Sign In with Google ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 189, 185, 185)),
                      ),
                      icon: Icon(
                        FontAwesomeIcons.google,
                        color: Color.fromARGB(
                          255,
                          189,
                          185,
                          185,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: MediaQuery.of(context).size.width.w,
                    height: 54.h,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff407BFF),
                      border: Border.all(color: const Color(0xffDEDEDE)),
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Sign In with Facebook ",
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: MediaQuery.of(context).size.width.w,
                    height: 54.h,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff000000),
                      border: Border.all(color: const Color(0xffDEDEDE)),
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Continue with Apple",
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                      icon: Icon(
                        FontAwesomeIcons.apple,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 18.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            " Login Now",
                            style: TextStyle(
                              color: Color(0xFF0E74BC),
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
