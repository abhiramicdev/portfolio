import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EndText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Made with",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                ),
              ),
              Icon(Icons.favorite, color: Colors.red),
            ],
          ),
          Text(
            "Abhirami C",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
