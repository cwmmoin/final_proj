import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1000),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/Logo.png',
                // height: 163.h,
                // width: 182.w,
              ),
            ),
            Stack(
              children: [
                Container(),
                Positioned(
                  child: Image.asset("assets/images/backgroundIllustration.png",
                      fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 0,
                  child: Divider(
                    color: Colors.black,
                    endIndent: 120.sp,
                    indent: 120.sp,
                    thickness: 5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
