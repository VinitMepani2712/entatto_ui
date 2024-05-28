import 'package:entatto_ui/screen/Auth/forgot_password_screen.dart';
import 'package:entatto_ui/screen/Auth/register_artist_screen.dart';
import 'package:entatto_ui/screen/Auth/register_studio_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/widget_support.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible1 = false;
  bool isChecked = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

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
          "Login",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Email Address"),
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
                Text("Password"),
                SizedBox(height: 10.h),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "\u274C Enter your password";
                    }
                    return null;
                  },
                  controller: passwordController,
                  obscureText: !isPasswordVisible1,
                  decoration: InputDecoration(
                    fillColor:
                        _focusNode.hasFocus ? Color(0xffE8EDFB) : Colors.white,
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
                    filled: true,
                    hintText: "Input your password",
                    hintStyle: TextStyle(color: Color(0xff858383)),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPasswordVisible1 = !isPasswordVisible1;
                        });
                      },
                      child: isPasswordVisible1
                          ? Icon(FontAwesomeIcons.eye)
                          : Icon(FontAwesomeIcons.eyeSlash),
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate())
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => ArtistSignUpScreen()),
                        ),
                      );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff407BFF),
                      border: Border.all(color: const Color(0xffDEDEDE)),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: AppWidget.signUpAndLoginButtonTextStyle(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen(),
                      ),
                    ),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xff1849D6),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: MediaQuery.of(context).size.width.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFFFFFF),
                    border: Border.all(color: const Color(0xffDEDEDE)),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Sign In with Google",
                      style: TextStyle(
                        color: Color.fromARGB(255, 189, 185, 185),
                      ),
                    ),
                    icon: Icon(
                      FontAwesomeIcons.google,
                      color: Color.fromARGB(255, 189, 185, 185),
                    ),
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: MediaQuery.of(context).size.width.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff407BFF),
                    border: Border.all(color: const Color(0xffDEDEDE)),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Sign In with Facebook",
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
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'What type of account would you like to create?',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ArtistSignUpScreen(),
                                        ),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xff1849D6),
                                        ),
                                        child: Text(
                                          'Artist',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    InkWell(
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              StudioSignUpScreen(),
                                        ),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Color(0xff1849D6),
                                              width: 2),
                                        ),
                                        child: Text(
                                          'Studio',
                                          style: TextStyle(
                                            color: Color(0xff1849D6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You don't have an account?",
                        style: TextStyle(
                          color: Color(0xFF6C6C6C),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        " Sign Up",
                        style: TextStyle(
                          color: Color(0xFF0E74BC),
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
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
