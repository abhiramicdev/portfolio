import 'package:flutter/material.dart';
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Color> _colors = [
    //  Colors.lightBlue[200],
    // Colors.lightBlue[300],
    // Colors.lightBlue[400],
    Color(0XFF5AB6EE),
    Color(0XFF44A8EC),
    // Color(0xFF80CAF3),
    // Colors.lightBlueAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.height / 2.7
                          : MediaQuery.of(context).size.height / 3.5,
                      // height:
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.lightGreen,
                      child: Sinusoidals(
                        reverse: true,
                        itemCount: 2,
                        builder: (context, index) {
                          return SinusoidalItem(
                            model: SinusoidalModel(
                              formular: WaveFormular.travelling,
                              amplitude: 20,
                              waves: 2,
                              translate: 5.0 * (index + 2),
                              center: 5.0 * (index + 1),
                              frequency: .5,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 2.8,
                              width: MediaQuery.of(context).size.width,
                              color: _colors[index],
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              MediaQuery.of(context).size.height
                                          ? MediaQuery.of(context).size.width /
                                              19
                                          : MediaQuery.of(context).size.width /
                                              10,
                                      child: CircleAvatar(
                                        radius:
                                            MediaQuery.of(context).size.width >
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    21
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    11,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                          'lib/assets/images/dev_girl.png',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: MediaQuery.of(context)
                                                    .size
                                                    .width >
                                                MediaQuery.of(context)
                                                    .size
                                                    .height
                                            ? 20
                                            // ? MediaQuery.of(context).size.width / 20
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                17),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "I'm Abhirami",
                                          style: GoogleFonts.sacramento(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height
                                                ? 60
                                                : 43,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "a mobile developer .",
                                          style: GoogleFonts.martel(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height
                                                ? 30
                                                : 21,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 5.5,

                  width: MediaQuery.of(context).size.width - 16,
                  // color: Colors.lightBlueAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.width >
                                    MediaQuery.of(context).size.height
                                ? 10
                                : 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              // color: Colors.lightBlue[50],
                              width: MediaQuery.of(context).size.width / 3.3,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Chip(
                                  backgroundColor: Colors.lightBlue[50],
                                  label: Text(
                                    "UI designs",
                                    style: GoogleFonts.martel(
                                      fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              MediaQuery.of(context).size.height
                                          ? 14
                                          : 12,
                                      color: Colors.black,
                                      // color: Colors.blueAccent[700],
                                      letterSpacing: .1,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 15,
                              width: .5,
                              color: Colors.black,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3.3,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Chip(
                                  backgroundColor: Colors.lightBlue[50],
                                  label: Text(
                                    "Apps on store",
                                    style: GoogleFonts.martel(
                                      fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              MediaQuery.of(context).size.height
                                          ? 14
                                          : 12,
                                      color: Colors.black,
                                      letterSpacing: .1,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 15,
                              width: .5,
                              color: Colors.black,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 5,
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/cv');
                                },
                                child: Hero(
                                  tag: 'cv',
                                  child: Chip(
                                    backgroundColor: Colors.lightBlue[50],
                                    label: Text(
                                      'CV',
                                      style: GoogleFonts.martel(
                                        fontSize:
                                            MediaQuery.of(context).size.width >
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height
                                                ? 14
                                                : 12,
                                        color: Colors.black,
                                        letterSpacing: .1,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 3.6 / 4,
                          height: .4,
                          color: Colors.black,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.width >
                                    MediaQuery.of(context).size.height
                                ? 13
                                : 6),
                        Text(
                          "Services",
                          style: GoogleFonts.martel(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width >
                                    MediaQuery.of(context).size.height
                                ? 26
                                : 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width >
                          MediaQuery.of(context).size.height
                      ? MediaQuery.of(context).size.height / 3.5
                      : MediaQuery.of(context).size.height / 2.6,
                  child: Center(
                    child: MediaQuery.of(context).size.width >
                            MediaQuery.of(context).size.height
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'lib/assets/images/mob_deva.png',
                                    height: MediaQuery.of(context).size.height /
                                        4.5,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Andriod',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'iOS',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'development',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'lib/assets/images/web_deva.png',
                                    height:
                                        MediaQuery.of(context).size.height / 4,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Multiplatform',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'Web',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'development',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'lib/assets/images/mob_deva.png',
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Andriod',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'iOS',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'development',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'lib/assets/images/web_deva.png',
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Multiplatform',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'Web',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'development',
                                        style: GoogleFonts.martel(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 7,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Currently available for freelance works.",
                          style: GoogleFonts.martel(),
                        ),
                        SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton.extended(
                                foregroundColor: Colors.lightBlue,
                                heroTag: 'call',
                                backgroundColor: Colors.white,
                                splashColor: Colors.lightBlue[50],
                                onPressed: () => launch("tel://8921475913"),
                                label: Text(
                                  'Call',
                                  style: GoogleFonts.martel(
                                    color: Colors.black,
                                  ),
                                ),
                                icon: Icon(
                                  Icons.call,
                                  color: Colors.black,
                                ),
                              ),
                              FloatingActionButton.extended(
                                heroTag: 'mail',
                                backgroundColor: Colors.white,
                                splashColor: Colors.lightBlue[50],
                                // backgroundColor: Colors.lightBlue[100],
                                onPressed: () => launch(
                                    "mailto:<abhiramicpani@gmail.com>?subject=<Type your requirement>&body=<Message>"),
                                label: Text(
                                  'Email',
                                  style: GoogleFonts.martel(
                                    color: Colors.black,
                                  ),
                                ),
                                icon: Icon(
                                  Icons.email_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GreenClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height / 1.25);
    var firstControlPoint = new Offset(size.width / 4, size.height);
    var firstEndPoint = new Offset(size.width / 2, size.height - 55);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 1.25 - 55);
    var secondEndPoint = new Offset(size.width, size.height - 40);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return null;
  }
}
