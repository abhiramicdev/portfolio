import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/screens/zoom_image.dart';

class AppCard extends StatelessWidget {
  final String image1;
  final String image2;
  final String appName;
  AppCard(this.image1, this.image2, this.appName);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (BuildContext context) {
              return ZoomPage(
                  this.image1, this.appName);
            },
          ),
        );
      },
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  this.image2,
                  height: MediaQuery.of(context).size.height / 4.5,
                ),
                Image.asset(
                  this.image1,
                  height: MediaQuery.of(context).size.height / 4.5,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  this.appName,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                Text(
                  "Android | iOS",
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                  ),
                ),
                Text(
                  'Dribble inspired',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
