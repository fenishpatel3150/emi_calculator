import 'package:emi_calculator/view/Home/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2e2f3f),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 450.h,
              width: 450.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/introimage.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get EMI', // Main heading
                  style: TextStyle(color: Colors.white, fontSize: 25.h),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Loans Made Easy', // Subtitle
                  style: TextStyle(color: Colors.white, fontSize: 25.h),
                ),
                SizedBox(height: 10.h),
                Text(
                  'We are here to assist you with your EMI calculations and options. Let us help you find the best solutions for your financial needs.',
                  style: TextStyle(color: Color(0xff5b5e75), fontSize: 12.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: SliderButton(
                radius: 50.h,
                alignLabel: Alignment.center,
                height: 50.h,
                width: 280.h,
                buttonColor: Color(0xffed5c54),
                backgroundColor: Color(0xff212232),
                buttonSize: 50.h,
                action: () async {
                   Get.to(HomeScreen()); // Navigation to HomeScreen
                },
                label: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17.h,
                  ),
                ),
                icon: Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
