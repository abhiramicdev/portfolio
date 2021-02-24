import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/screens/zoom_image.dart';
import 'package:myportfolio/widgets/app_card.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class Showcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Flutter ',
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'UI Showcase',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 1,
                shadowColor: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      AppCard(
                        'lib/assets/images/travel_mock1.png',
                        'lib/assets/images/travel2.png',
                        'Travel app ui',
                      ),
                      SizedBox(height:15),
                      // Container(height:7),
                      // Card(),
                            AppCard(
                        'lib/assets/images/home1.png',
                        'lib/assets/images/home2.png',
                        'Smart home app ui',
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
