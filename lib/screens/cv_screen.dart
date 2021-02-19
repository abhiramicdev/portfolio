import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CVScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Hero(
          tag: 'cv',
          child: Text(
            "Developer's CV",
            // "Abhirami C",
            style: GoogleFonts.martel(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width >
                            MediaQuery.of(context).size.height
                        ? MediaQuery.of(context).size.width / 19
                        : MediaQuery.of(context).size.width / 10,
                    backgroundImage: AssetImage(
                      'lib/assets/images/my_image.jpg',
                    ),
                  ),
                  Container(
                    // color: Colors.lightBlue[50],
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Center(
                      child: Text(
                        "I'm a creative flutter developer with 2+ years experience in mobile application development",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.martel(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //** Experience container */
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                // color: Colors.lightGreen[50],
                // child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(bottom:7.0),
                //       child: Text(
                //         "EXPERIENCE",
                //         style: GoogleFonts.martel(
                //           color: Colors.blue,
                //           fontSize: 15,
                //         ),
                //       ),
                //     ),
                //     CvExpTile(),
                //   ],
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EXPERIENCE",
                      style: GoogleFonts.martel(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      // 'Company name',
                      // "INOMETRICS TECHNOLOGY SYSTEMS PVT LTD",
                      "Inometrics Technology Systems Pvt Ltd - Technopark",
                      style: GoogleFonts.martel(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Flutter Developer",
                      style: GoogleFonts.martel(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        'DECEMBER 2018 - PRESENT',
                        style: GoogleFonts.roboto(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Text(
                      "Currently working as a flutter developer. Applications were made for Android & iOS, involved in complete application development lifecycle",
                      style: GoogleFonts.martel(
                        color: Colors.black,
                      ),
                    ),
                    Container(
                        // color: Colors.lightBlue[50],
                        height: MediaQuery.of(context).size.height / 40),
                    Text(
                      // 'Company name',
                      // "INOMETRICS TECHNOLOGY SYSTEMS PVT LTD",
                      "Elementz Engineers Guild Pvt Ltd",
                      // "Inometrics Technology Systems Pvt Ltd - Technopark",
                      style: GoogleFonts.martel(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      // "Flutter Developer",
                      "Android Application Development Intern",
                      style: GoogleFonts.martel(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        'JUNE 2018 - DECEMBER 2018',
                        style: GoogleFonts.roboto(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Text(
                      "Trained in native Android Development,involved in complete application development lifecycle.",
                      style: GoogleFonts.martel(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                // child: FixedTimeline(
                //   children: [CvExpTile()],
                //   // theme: TimelineThemeData(...),
                //   // children: [...],
                // ),
                // child: Timeline.tileBuilder(
                // builder: TimelineTileBuilder.fromStyle(
                //   contentsAlign: ContentsAlign.reverse,
                //   contentsBuilder: (context, index) => Padding(
                //     padding: const EdgeInsets.all(16.0),
                //     child: CvExpTile(),
                //     // child: Text('Timeline Event $index'),
                //   ),
                //   itemCount: 2,
                // ),
                //   ),
              ),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Text(
      //     'Second',
      //   ),
      // ),
    );
  }
}
