import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillTile extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  SkillTile(this.title, this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.purple[50],
      height: this.height,
      width: this.width,
      child: Text(
        this.title,
        style: GoogleFonts.martel(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    );
  }
}
