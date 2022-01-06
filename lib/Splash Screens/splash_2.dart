import 'package:fit_me/Splash%20Screens/splash_3.dart';
import 'package:fit_me/contants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'generic_splash_screen.dart';
class Splash2 extends StatelessWidget {
  const Splash2({Key? key}) : super(key: key);
  static String id = '/splash 2';
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Splash(
        Heading: "Get Burn",
        subText: "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
        img: "splash2.png",
        butt: "splash2_button.png",
        nextScr: Splash3.id,
      ),
    );
  }
}


