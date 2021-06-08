import 'package:flutter/material.dart';
import 'package:myportfolio/screens/showcase.dart';
import 'screens/cv_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Abhirami's Portfolio",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Showcase(),
        '/cv': (context) => CVScreen(),
        '/showcase': (context) => Showcase(),
        // '/zoom': (context) => ZoomPage(),
      },
      // home: Showcase(),
    );
  }
}
