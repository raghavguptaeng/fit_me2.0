import 'package:fit_me/Splash%20Screens/splash_4.dart';
import 'package:fit_me/contants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'generic_splash_screen.dart';
class Splash3 extends StatelessWidget {
  const Splash3({Key? key}) : super(key: key);
  static String id = '/splash 3';
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Splash(
        Heading: "Eat Well",
        subText: "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
        img: "splash3.png",
        butt: "splash3_button.png",
        nextScr: Splash4.id,
      ),
    );
  }
}


