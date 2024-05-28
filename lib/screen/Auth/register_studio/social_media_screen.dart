import 'package:entatto_ui/screen/Auth/register_artist/location/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaScreen extends StatefulWidget {
  const SocialMediaScreen({super.key});

  @override
  State<SocialMediaScreen> createState() => _SocialMediaScreenState();
}

class _SocialMediaScreenState extends State<SocialMediaScreen> {
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
          "Socail Media",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                buildLocationIcon(),
                SizedBox(height: 10),
                buildTitle(),
                SizedBox(height: 10),
                buildDescription(),
                SizedBox(height: 30),
                buildSearchField(),
                SizedBox(height: MediaQuery.of(context).size.height / 2.3.h),
                buildNextButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLocationIcon() {
    return SvgPicture.asset("assets/svg/instagram.svg");
  }

  Widget buildTitle() {
    return Text(
      'What’s your Instagram?',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildDescription() {
    return Text(
      'Add a link to your Instagram profile ',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
    );
  }

  Widget buildSearchField() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your instagram"),
          SizedBox(height: 10),
          TextField(
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
              hintText: '@your_instagram',
              hintStyle:
                  TextStyle(color: const Color.fromARGB(255, 199, 199, 199)),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNextButton(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationScreen(),
        ),
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
          'Next',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
