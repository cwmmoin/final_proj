import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travel_app/pages/login_page.dart';

import '../databases/data_base_helper.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(MdiIcons.chevronLeft),
          ),
          title: Text(
            "Register",
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
                    height: 30.h,
                  ),
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null) {
                        return 'Please Enter Name';
                      } else if (value.trim().isEmpty) {
                        return 'Please Enter Name';
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
                      hintText: "Full Name",
                      filled: false,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null) {
                        return 'Please Enter Email';
                      }
                      if (value.trim().isEmpty) {
                        return 'Please Enter Email';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please a valid Email';
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
                      filled: false,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  TextFormField(
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value == null) {
                        return 'Please Confirm Password Again';
                      } else if (value.trim().isEmpty) {
                        return 'Please Confirm Password Again';
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
                      hintText: "Confirm Password",
                      filled: false,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("By continuing, you agree with our "),
                          Text(
                            "Term &",
                            style: GoogleFonts.poppins(
                              // textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xff0063A7),
                            ),
                          ),
                        ],
                      ),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Conditions ",
                            style: GoogleFonts.poppins(
                              // textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xff0063A7),
                            ),
                          ),
                          const Text("and "),
                          Text(
                            "Privacy Policy",
                            style: GoogleFonts.poppins(
                              // textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xff0063A7),
                            ),
                          ),
                        ],
                      ),
                    ],
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
                        DatabaseHelper.save(nameController.text,
                            emailController.text, passwordController.text);
                        //
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LogInPage(),
                          //
                        ));
                        List<Map<String, dynamic>> get =
                            await DatabaseHelper.get();

                        setState(() {
                          print("get $get");
                        });
                      },
                      child: Text(
                        'Register',
                        style: GoogleFonts.roboto(
                          // textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.333,
                          color: const Color(0xffFFFFFF),
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
                      const Text("or register with"),
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
                  const SizedBox(height: 24),
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
          ),
        ),
      ),
    );
  }
}
