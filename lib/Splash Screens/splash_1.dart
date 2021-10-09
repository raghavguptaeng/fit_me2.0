import 'package:fit_me/Splash%20Screens/splash_2.dart';
import 'package:fit_me/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'generic_splash_screen.dart';
class Splash1 extends StatelessWidget {
  const Splash1({Key? key}) : super(key: key);
  static String id = '/splash 1';
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Splash(
        Heading: "Track Your Goal",
        subText: "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
        img: "splash1.png",
        butt: "Splash1_Button.png",
        nextScr: Splash2.id,
      ),
    );
  }
}


