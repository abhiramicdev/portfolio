import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class ZoomPage extends StatelessWidget {
  final String image;
  final String appName;
  ZoomPage(this.image, this.appName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.appName,
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Pinch to Zoom",
              style: GoogleFonts.poppins(
                color: Colors.blue,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).size.height / 7,
            width: MediaQuery.of(context).size.width,
            child: PinchZoom(
              // image: Image.network('http://placerabbit.com/200/333'),
              image: Image.asset(
                this.image,
                height: MediaQuery.of(context).size.height / 2,
              ),
              zoomedBackgroundColor: Colors.white.withOpacity(0.5),
              resetDuration: const Duration(milliseconds: 100),
              maxScale: 2.5,
            ),
          ),
        ],
      ),
    );
  }
}
