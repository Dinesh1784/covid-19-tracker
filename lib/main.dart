import 'package:covid_tracker/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff202c3b),
      ),
      home: SplashScreen(
        seconds: 4,
        navigateAfterSeconds: HomeScreen(),
        title: Text(
          "Covid-19 Tracker",
          style: GoogleFonts.poppins(fontSize: 30),
        ),
        backgroundColor: Colors.white,
        loaderColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
