import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TrainPage extends StatefulWidget {
  const TrainPage({super.key});

  @override
  State<TrainPage> createState() => _TrainPageState();
}

class _TrainPageState extends State<TrainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            MdiIcons.chevronLeft,
            color: const Color(0xffffffff),
          ),
        ),
        backgroundColor: const Color(0xff0063A7),
        title: Text(
          "Trains",
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.33,
            fontStyle: FontStyle.normal,
            color: const Color(0xffffffff),
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.more_horiz,
            color: Color(0xffffffff),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 339.w,
                height: 410.h,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "From",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/toTrain.svg"),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "Select origin city/station",
                                style: GoogleFonts.poppins(
                                    // textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: const Color(0xff000000),
                                    letterSpacing: -0.333),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 0, //spacing at the start of divider
                      endIndent: 0,
                      //spacing at the end of divider
                    ),

                    ////

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "To",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/fromTrain.svg"),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "Select destination city/station ",
                                style: GoogleFonts.poppins(
                                    // textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: const Color(0xff000000),
                                    letterSpacing: -0.333),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 0, //spacing at the start of divider
                      endIndent: 0,
                      //spacing at the end of divider
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Departure Date",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/depDate.svg"),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "Friday, 28 May 2021",
                                style: GoogleFonts.poppins(
                                    // textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: const Color(0xff000000),
                                    letterSpacing: -0.333),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 0, //spacing at the start of divider
                      endIndent: 0,
                      //spacing at the end of divider
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Return Date",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/depDate.svg"),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "Friday, 28 May 2021",
                                style: GoogleFonts.poppins(
                                    // textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: const Color(0xff000000),
                                    letterSpacing: -0.333),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 0, //spacing at the start of divider
                      endIndent: 0,
                      //spacing at the end of divider
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 13),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Passenggers",
                                style: GoogleFonts.poppins(
                                    // textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    color: const Color(0xff000000),
                                    letterSpacing: -0.333),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset("assets/svg/passengers.svg"),
                                  SizedBox(
                                    width: 12.w,
                                  ),
                                  Text(
                                    "1 Adult",
                                    style: GoogleFonts.poppins(
                                        // textStyle: Theme.of(context).textTheme.displayLarge,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xff000000),
                                        letterSpacing: -0.333),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 31.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Seat Class",
                                style: GoogleFonts.poppins(
                                    // textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    color: const Color(0xff000000),
                                    letterSpacing: -0.333),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset("assets/svg/econmy.svg"),
                                  SizedBox(
                                    width: 12.w,
                                  ),
                                  Text(
                                    "Business",
                                    style: GoogleFonts.poppins(
                                        // textStyle: Theme.of(context).textTheme.displayLarge,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xff000000),
                                        letterSpacing: -0.333),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.5),
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 0, //spacing at the start of divider
                      endIndent: 0,
                      //spacing at the end of divider
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      width: 309.w,
                      height: 33.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFFA216),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Search",
                          style: GoogleFonts.poppins(
                              // textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xffffffff),
                              letterSpacing: -0.333),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
