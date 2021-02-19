import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/widgets/skill_tile.dart';
import 'package:myportfolio/widgets/subheading_style.dart';

class CVScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Abhirami C",
          style: GoogleFonts.martel(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
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
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Center(
                      child: Text(
                        "Enthusiastic creative Flutter developer with 2+ years experience in flutter development. Consistent self learner, expert at rendering UI/UX designs perfectly for applications.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.martel(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width >
                                  MediaQuery.of(context).size.height
                              ? 15
                              : 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //** Experience container */
              Container(
                // color: Colors.orange,
                height: MediaQuery.of(context).size.width >
                        MediaQuery.of(context).size.height
                    ? MediaQuery.of(context).size.height / 2.3
                    : MediaQuery.of(context).size.height / 2.1,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.blue,
                      height: MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.height / 2.3
                          : MediaQuery.of(context).size.height / 2.1,
                      width: MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.width / 14
                          : 16,
                    ),
                    Container(
                      // color: Colors.lightGreen,
                      height: MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.height / 2.3
                          : MediaQuery.of(context).size.height / 2.1,
                      width: MediaQuery.of(context).size.width * 3.5 / 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              // color: Colors.lightBlue[50],
                              height: MediaQuery.of(context).size.height / 50),
                          Text(
                            "EXPERIENCE",
                            style: GoogleFonts.martel(
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          ),
                          Container(
                              // color: Colors.lightBlue[50],
                              height: MediaQuery.of(context).size.height / 60),
                          SubHeading(
                              "Inometrics Technology Systems Pvt Ltd - Technopark"),
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
                              height: MediaQuery.of(context).size.height / 50),
                          SubHeading("Elementz Engineers Guild Pvt Ltd"),
                          Text(
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
                    ),
                  ],
                ),
              ),
              //** SKILLS */
              Container(
                // color: Colors.lightGreen[50],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width >
                        MediaQuery.of(context).size.height
                    ? MediaQuery.of(context).size.height / 3
                    : MediaQuery.of(context).size.height / 2.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.blue,
                      height: MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.height / 3
                          : MediaQuery.of(context).size.height / 2.2,
                      width: MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.width / 14
                          : MediaQuery.of(context).size.width / 24,
                    ),
                    Container(
                      // color: Colors.lightGreen[50],
                      width: MediaQuery.of(context).size.width * 22 / 24,
                      height: MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.height / 3
                          : MediaQuery.of(context).size.height / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              // color: Colors.lightBlue[50],
                              height: MediaQuery.of(context).size.height / 60),
                          Text(
                            "SKILLS",
                            style: GoogleFonts.martel(
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          ),
                          Container(
                              // color: Colors.lightBlue[50],
                              height: MediaQuery.of(context).size.height / 60),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SubHeading("Languages:"),
                              SizedBox(width: 5),
                              SkillTile(
                                  "DART, Java SE 9, XML, SQLite, MySQL, HTML, CSS, JS, Angular(Basic), Node JS(Basic)",
                                  MediaQuery.of(context).size.width >
                                          MediaQuery.of(context).size.height
                                      ? MediaQuery.of(context).size.height / 24
                                      : 75,MediaQuery.of(context).size.width * 2.4 / 4,),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SubHeading("Platforms:"),
                              SizedBox(width: 5),
                              SkillTile("MacOS, Windows, Linux, Ubuntu", 30,MediaQuery.of(context).size.width * 2.7 / 4,),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SubHeading("IDE Experience:"),
                              SizedBox(width: 5),
                              SkillTile(
                                  "Visual Studio Code, Android Studio, Eclipse",
                                  MediaQuery.of(context).size.width >
                                          MediaQuery.of(context).size.height
                                      ? MediaQuery.of(context).size.height / 24
                                      : 50,MediaQuery.of(context).size.width * 2.3 / 4,),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SubHeading("Frameworks:"),
                              SizedBox(width: 5),
                              SkillTile("Flutter", 30,MediaQuery.of(context).size.width * 2.3 / 4,),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SubHeading("Tools:"),
                              SizedBox(width: 5),
                              SkillTile(
                                  "GIT, Postman, Genymotion, GIMP, Pencil", MediaQuery.of(context).size.width >
                                          MediaQuery.of(context).size.height
                                      ? MediaQuery.of(context).size.height / 24
                                      : 50,MediaQuery.of(context).size.width * 2.7 / 4,),
                            ],
                          ),
                          //                              Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   children: [
                          //     SubHeading("Technologies:"),
                          //     SizedBox(width: 5),
                          //     SkillTile("GIT, Postman, Genymotion, GIMP, Pencil"),
                          //     // SkillTile(
                          //     //     "DART, Java SE 9, XML, SQLite, MySQL, HTML, CSS, JS, Angular(Basic), Node JS(Basic)"),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
