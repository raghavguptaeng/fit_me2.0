import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kBigButtonText =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
const kBlue_linear = LinearGradient(
  colors: [
    Color(0xFF9DCEFF),
    Color(0xFF92A3FD),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
const kRoundedBigButton = BoxDecoration(
    gradient: kBlue_linear,
    borderRadius: BorderRadius.all(Radius.circular(99)));
TextStyle kBigTextHeading = GoogleFonts.poppins(
    fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black);
TextStyle kSubTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black);
InputDecoration kInputTextDecoration = InputDecoration(
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    borderSide: BorderSide(),
  ),
);
const kPurple = Color(0xFFC58BF2);
const kPurple_linear = LinearGradient(
  colors: [
    Color(0xFFEEA4CE),
    kPurple
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
const kWaterIntakeLinear = LinearGradient(
  colors: [
    Color(0xFFC58BF2),
    Color(0xFFB4C0FE),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
const kRoundedContainerPurple = BoxDecoration(
    gradient: kPurple_linear,
    borderRadius: BorderRadius.all(Radius.circular(15)));
const kRoundedContainer = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(15)));
BoxDecoration kBmiCardDecoration = BoxDecoration(
    gradient: kBlue_linear,
    image: DecorationImage(
      fit: BoxFit.fitWidth,
      image: AssetImage("Assets/Login_and_others/dots.png"),
    ),
    borderRadius: BorderRadius.circular(25)
);

BoxDecoration kShadowContainer = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(3.0, 3.0),
        blurRadius: 5.0,
        spreadRadius: 2.0,
      ),
    ]
);

TextStyle klinearTextBlue(width){
  return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: width * 0.045,
      foreground: Paint()
        ..shader = kBlue_linear.createShader(Rect.largest),
  );
}

TextStyle klinearTextPurple(width){
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: width * 0.045,
    foreground: Paint()
      ..shader = kPurple_linear.createShader(Rect.largest),
  );
}

var kBlueContainer = BoxDecoration(
    color: Color(0xFFCCDCFD).withOpacity(0.55),
    borderRadius: BorderRadius.circular(25)
);