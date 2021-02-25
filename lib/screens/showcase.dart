import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/widgets/app_card.dart';
import 'package:myportfolio/widgets/end_text.dart';

class Showcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: .8,
          backgroundColor: Colors.white,
          title: Row(
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
        ),
        body: MediaQuery.of(context).size.width >
                MediaQuery.of(context).size.height
            // ? GridView.count(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 10.0,
            //     mainAxisSpacing: 10.0,
            //     shrinkWrap: true,
            //     children: List.generate(
            //       2,
            //       (index) {
            //         return AppCard(
            //           'lib/assets/images/travel_mock1.png',
            //           'lib/assets/images/travel2.png',
            //           'Travel app ui',
            //         );
            //       },
            //     ),
            //   )
            ? GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  AppCard(
                    'lib/assets/images/travel_mock1.png',
                    'lib/assets/images/travel2.png',
                    'Travel app ui',
                  ),
                  AppCard(
                      'lib/assets/images/home1.png',
                      'lib/assets/images/home2.png',
                      "Neumorphic Smart home ui"),
                ],
              )
            //   ? GridView(
            //     key: ,
            //     scrollDirection: Axis.vertical,
            // // crossAxisCount: 2,
            //       // crossAxisSpacing: 10.0,
            //       // mainAxisSpacing: 10.0,
            //       shrinkWrap: true,
            //       // scrollDirection:
            //       // ? Axis.horizontal
            //       // Axis.vertical,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 12.0),
            //           child: Text(
            //             "#MadewithFlutter",
            //             textAlign: TextAlign.center,
            //             style: GoogleFonts.poppins(
            //               color: Colors.blue,
            //             ),
            //           ),
            //         ),
            //         AppCard(
            //           'lib/assets/images/travel_mock1.png',
            //           'lib/assets/images/travel2.png',
            //           'Travel app ui',
            //         ),
            //         AppCard(
            //             'lib/assets/images/home1.png',
            //             'lib/assets/images/home2.png',
            //             "Neomorphic Smart home ui"),
            //         EndText(),
            //       ],
            //     )
            : ListView(
                scrollDirection:
                    // ? Axis.horizontal
                    Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "#MadewithFlutter",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  AppCard(
                    'lib/assets/images/travel_mock1.png',
                    'lib/assets/images/travel2.png',
                    'Travel app ui',
                  ),
                  AppCard(
                      'lib/assets/images/home1.png',
                      'lib/assets/images/home2.png',
                      "Neomorphic Smart home ui"),
                  EndText(),
                ],
              ),
      ),
    );
  }
}
