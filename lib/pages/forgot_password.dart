import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travel_app/pages/login_page.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password",
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
                // SizedBox(
                //   height: 10.h,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enter your registered email to reset your password",
                      style: GoogleFonts.poppins(
                          // textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          letterSpacing: -0.333),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 17.0, horizontal: 20.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff0063A7),
                      ),
                    ),
                    hintText: "Enter your email",
                    hintStyle: GoogleFonts.roboto(
                      // textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: const Color(0xff000000),
                    ),
                    filled: false,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(339, 37),
                    backgroundColor: const Color(0xff0063A7),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Send",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: const Color(0xffffffff),
                      letterSpacing: 0.333,
                    ),
                  ),
                ),
                SizedBox(height: 440.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: GoogleFonts.roboto(
                        // textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
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
                        'Login',
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
                SizedBox(
                  height: 28.h,
                ),
                const Divider(
                  color: Colors.black,
                  height: 5, //height spacing of divider
                  thickness: 3, //thickness of divier line
                  indent: 120, //spacing at the start of divider
                  endIndent: 120,
                  //spacing at the end of divider
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
