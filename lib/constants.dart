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
    fontWeight: FontWeight.w700, fontSize: 24, color: Colors.black);
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
const kRoundedContainer = BoxDecoration(
    gradient: kPurple_linear,
    borderRadius: BorderRadius.all(Radius.circular(15)));
BoxDecoration kBmiCardDecoration = BoxDecoration(
    gradient: kBlue_linear,
    image: DecorationImage(
      fit: BoxFit.fitWidth,
      image: AssetImage("Assets/Login_and_others/dots.png"),
    ),
    borderRadius: BorderRadius.circular(25)
);
