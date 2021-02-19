import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillTile extends StatelessWidget {
  final String title;
  final double height;
  SkillTile(this.title, this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.purple[50],
      height: this.height,
      width: MediaQuery.of(context).size.width * 2.6 / 4,
      child: Text(
        this.title,
        style: GoogleFonts.martel(
          color: Colors.black,
        ),
      ),
    );
  }
}
