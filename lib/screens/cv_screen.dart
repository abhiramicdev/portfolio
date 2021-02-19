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
        title: Hero(
          tag: 'cv',
          child: Text(
            "Abhirami C",
            style: GoogleFonts.martel(
              color: Colors.black,
              fontSize: 23,
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
                        "Enthusiastic creative Flutter developer with 2+ years experience in flutter development. Consistent self learner, expert at rendering UI/UX designs perfectly for applications.",
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
                // color: Colors.orange,
                height: MediaQuery.of(context).size.width >
                        MediaQuery.of(context).size.height
                    ? MediaQuery.of(context).size.height / 2.5
                    : MediaQuery.of(context).size.height / 2.1,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        // color: Colors.lightBlue[50],
                        height: MediaQuery.of(context).size.height / 40),
                    Text(
                      "EXPERIENCE",
                      style: GoogleFonts.martel(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
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
              //** SKILLS */
              Container(
                // color: Colors.lightGreen[50],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width >
                        MediaQuery.of(context).size.height
                    ? MediaQuery.of(context).size.height / 3
                    : MediaQuery.of(context).size.height / 2.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SKILLS",
                      style: GoogleFonts.martel(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SubHeading("Languages:"),
                        SizedBox(width: 5),
                        SkillTile(
                            "DART, Java SE 9, XML, SQLite, MySQL, HTML, CSS, JS, Angular(Basic), Node JS(Basic)",
                            50.0),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SubHeading("Platforms:"),
                        SizedBox(width: 5),
                        SkillTile("MacOS, Windows, Linux, Ubuntu", 30),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SubHeading("IDE Experience:"),
                        SizedBox(width: 5),
                        SkillTile("MacOS, Windows, Linux, Ubuntu", 30),
                        // SkillTile(
                        //     "DART, Java SE 9, XML, SQLite, MySQL, HTML, CSS, JS, Angular(Basic), Node JS(Basic)"),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SubHeading("Frameworks:"),
                        SizedBox(width: 5),
                        SkillTile("Flutter", 30),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SubHeading("Tools:"),
                        SizedBox(width: 5),
                        SkillTile("GIT, Postman, Genymotion, GIMP, Pencil", 30),
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
      ),
    );
  }
}
