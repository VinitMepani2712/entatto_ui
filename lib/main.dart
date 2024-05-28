import 'package:entatto_ui/screen/Auth/forgot_password_screen.dart';
import 'package:entatto_ui/screen/Auth/log_in_screen.dart';
import 'package:entatto_ui/screen/Auth/register_studio/social_media_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screen/Auth/forgot_password_successful_screen.dart';
import 'screen/Auth/register_artist/location/location_screen.dart';
import 'screen/Auth/register_studio/register_studio_screen.dart';
import 'screen/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
