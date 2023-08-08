import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0063A7),
        title: Text(
          "Booking",
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
      ),
    );
  }
}
