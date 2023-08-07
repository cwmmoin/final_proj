import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'login_page.dart';

class AccountVerificationPage extends StatefulWidget {
  const AccountVerificationPage({super.key});

  @override
  State<AccountVerificationPage> createState() =>
      _AccountVerificationPageState();
}

class _AccountVerificationPageState extends State<AccountVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(MdiIcons.arrowLeft),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/Aero.svg',
                fit: BoxFit.contain,
                height: 27.h,
                width: 30.w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Apic',
                style: GoogleFonts.poppins(
                    // textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: const Color(0xff0063A7),
                    letterSpacing: -0.333),
              ),
              Text(
                'Travel',
                style: GoogleFonts.poppins(
                    // textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: const Color(0xff0063A7),
                    letterSpacing: -0.333),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Account Verification",
                  style: GoogleFonts.poppins(
                      // textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      letterSpacing: -0.333),
                ),
              ],
            ),
            SizedBox(
              width: 262.w,
              height: 30.h,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Hi, thanks for getting your account. Check email example@gmail.com to verify your ApicTravel account.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        // textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        letterSpacing: -0.333,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Resend the verification email',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                // textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                letterSpacing: -0.333,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(339, 37),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xff0063A7)),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                onPressed: () async {
                  // bool isFormValid = _formKey.currentState!.validate();
                  // if (!isFormValid) {
                  //   return;
                  // }
                  // DatabaseHelper.save(nameController.text, emailController.text,
                  //     passwordController.text);
                  //
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LogInPage(),
                      //
                    ),
                  );
                  // List<Map<String, dynamic>> get = await DatabaseHelper.get();

                  setState(() {
                    // print("get $get");
                  });
                },
                child: Text(
                  'Resend',
                  style: GoogleFonts.roboto(
                    // textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.333,
                    color: const Color(0xff0063A7),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 514.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: GoogleFonts.roboto(
                    // textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInPage(),
                        ));
                  },
                  child: Text(
                    ' Login',
                    style: GoogleFonts.roboto(
                      // textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: const Color(0xff0063A7),
                    ),
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
