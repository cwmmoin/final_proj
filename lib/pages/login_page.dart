import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/sign_up.dart';

import '../databases/data_base_helper.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(MdiIcons.arrowLeft),
          ),
          title: Text(
            "Login",
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.33,
              fontStyle: FontStyle.normal,
              color: const Color(0xff000000),
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 18.h,
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null) {
                        return 'Please Enter Email';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please a valid Email';
                      } else if (value.trim().isEmpty) {
                        return 'Please Enter Email';
                      }

                      return null;
                    },
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
                      hintText: "Email",
                      hintStyle: GoogleFonts.roboto(
                          // textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: const Color(0xff000000)),
                      filled: false,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null) {
                        return 'Please a Enter Password';
                      } else if (value.trim().isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
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
                      hintText: "Password",
                      hintStyle: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: const Color(0xff000000)),
                      filled: false,
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Text(
                    "Forgot Password?",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.roboto(
                      // textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: const Color(0xff0063A7),
                    ),
                  ),
                  SizedBox(height: 28.h),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(339, 37),
                        backgroundColor: const Color(0xff0063A7),
                      ),
                      onPressed: () async {
                        bool isFormValid = _formKey.currentState!.validate();
                        if (!isFormValid) {
                          return;
                        }
                        List<Map<String, dynamic>> items =
                            await DatabaseHelper.get();

                        for (var a in items) {
                          if (a["email"] == emailController.text &&
                              a["password"] == passwordController.text) {
                            // ignore: use_build_context_synchronously
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ));
                          }
                        }

                        setState(() {
                          print("obj $items");
                        });
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider(
                        indent: 18.w,
                        endIndent: 9.w,
                      )),
                      const Text("or login with"),
                      Expanded(
                          child: Divider(
                        endIndent: 18.w,
                        indent: 9.w,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/appleLogo.png"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.95.w,
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/facebookLogo.png"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.95.w,
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/googleLogo.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 287.h),
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
                                builder: (context) => const SignUpPage(),
                              ));
                        },
                        child: Text(
                          'Register here',
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
      ),
    );
  }
}
