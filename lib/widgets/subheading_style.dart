import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubHeading extends StatelessWidget {
  final String text;
  SubHeading(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: GoogleFonts.martel(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
    );
  }
}
