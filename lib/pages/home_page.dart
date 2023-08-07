import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/main-pool-area.jpg'},
    {"id": 2, "image_path": 'assets/images/hotel_1.jpg'},
    {"id": 3, "image_path": 'assets/images/hotel_2.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svg/Aero.svg',
              fit: BoxFit.contain,
              height: 18.h,
              width: 20.w,
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svg/circle_dollar.svg",
                  width: 14,
                  height: 14,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  "100 Pts",
                  style: GoogleFonts.poppins(
                      // textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: const Color(0xff0063A7),
                      letterSpacing: -0.333),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) => Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Container(
                width: 375.w,
                height: 193.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xffFFffff).withOpacity(0.1),
                      const Color(0xff000000).withOpacity(0.3),
                      const Color(0xff000000).withOpacity(0.6),
                      const Color(0xff000000).withBlue(10).withOpacity(0.99),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 18,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.yellow
                                : const Color(0xffE0E0E0)),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Positioned(
                top: 38,
                child: Column(
                  children: [
                    Text(
                      "Bali, Indonesia",
                      style: GoogleFonts.poppins(
                          // textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: const Color(0xffffffff),
                          letterSpacing: -0.333),
                    ),
                    SizedBox(
                      width: 180.w,
                      height: 36.h,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Find your hotel easily and travel anywhere you want wits us.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xffffffff),
                                letterSpacing: -0.333,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 18,
                bottom: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                    fixedSize: const Size(135, 38),
                    backgroundColor: const Color(0xffFFA216),
                  ),
                  onPressed: () {},
                  child: Text(
                    'View Hotels',
                    style: GoogleFonts.poppins(
                        // textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: const Color(0xffffffff),
                        letterSpacing: -0.333),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: GoogleFonts.poppins(
                          // textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: const Color(0xff000000),
                          letterSpacing: -0.333),
                    ),
                    // SizedBox(
                    //   width: 196.w,
                    // ),
                    Text(
                      textAlign: TextAlign.right,
                      "All Categories",
                      style: GoogleFonts.poppins(
                          // textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: const Color(0xff0063A7),
                          letterSpacing: -0.333),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 63.8.w,
                          height: 64.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: const Color(0xffffffff),
                          ),
                          child: SvgPicture.asset(
                            "assets/svg/plane.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "FLIGHT",
                          style: GoogleFonts.poppins(
                              // textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xff000000),
                              letterSpacing: -0.333),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 63.8.w,
                          height: 64.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: const Color(0xffffffff),
                          ),
                          child: SvgPicture.asset(
                            "assets/svg/hotels.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "HOTELS",
                          style: GoogleFonts.poppins(
                              // textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xff000000),
                              letterSpacing: -0.333),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 63.8.w,
                          height: 64.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: const Color(0xffffffff),
                          ),
                          child: SvgPicture.asset(
                            "assets/svg/train.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "TRAINS",
                          style: GoogleFonts.poppins(
                              // textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xff000000),
                              letterSpacing: -0.333),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 63.8.w,
                          height: 64.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: const Color(0xffffffff),
                          ),
                          child: SvgPicture.asset(
                            "assets/svg/bus.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "BUS",
                          style: GoogleFonts.poppins(
                              // textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
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
          SizedBox(
            height: 28.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Destination",
                      style: GoogleFonts.poppins(
                          // textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: const Color(0xff000000),
                          letterSpacing: -0.333),
                    ),
                    SizedBox(
                      width: 140.w,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/leftChervon.png"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/rightChervon.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 143.h,
                            width: 104.w,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.r),
                                        ), // Image border
                                        child: Image.asset(
                                          "assets/images/indonessia.jpg",
                                          width: 104.w,
                                          height: 135.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Indonesia",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 143.h,
                            width: 104.w,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.r),
                                        ), // Image border
                                        child: Image.asset(
                                          "assets/images/japan.jpg",
                                          width: 104.w,
                                          height: 135.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Japan",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 143.h,
                            width: 104.w,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.r),
                                        ), // Image border
                                        child: Image.asset(
                                          "assets/images/korea.jpg",
                                          width: 104.w,
                                          height: 135.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Korea",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 143.h,
                            width: 104.w,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.r),
                                        ), // Image border
                                        child: Image.asset(
                                          "assets/images/dubai.jpg",
                                          width: 104.w,
                                          height: 135.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Dubai",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 143.h,
                            width: 104.w,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.r),
                                        ), // Image border
                                        child: Image.asset(
                                          "assets/images/oman.jpg",
                                          width: 104.w,
                                          height: 135.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Oman",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 143.h,
                            width: 104.w,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.r),
                                        ), // Image border
                                        child: Image.asset(
                                          "assets/images/qatar.jpg",
                                          width: 104.w,
                                          height: 135.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Qatar",
                            style: GoogleFonts.poppins(
                                // textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xff000000),
                                letterSpacing: -0.333),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
    );
  }
}
