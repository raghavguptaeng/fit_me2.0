import 'package:fit_me/Authentication/Signup/sign_up.dart';
import 'package:fit_me/contants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'generic_splash_screen.dart';
class Splash4 extends StatelessWidget {
  const Splash4({Key? key}) : super(key: key);
  static String id = '/splash 4';
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Splash(
        Heading: "Improve Sleep Quality",
        subText: "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
        img: "splash4.png",
        butt: "splash4_button.png",
        nextScr: SignUp.id,
      ),
    );
  }
}


