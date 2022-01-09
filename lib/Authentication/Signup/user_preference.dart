import 'package:carousel_slider/carousel_slider.dart';
import 'package:fit_me/Authentication/Login/login.dart';
import 'package:flutter/material.dart';

import '../../contants/constants.dart';

class GetUserPreference extends StatelessWidget {
  const GetUserPreference({Key? key}) : super(key: key);
  static String id = '/get user preference';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            greeting(width),
            CarouselSlider(
              items: [
                PreferenceCard(
                  width: width,
                  height: height,
                  img: 'pref1.png',
                  heading: 'Improve Shape',
                  subtext: "I have a low amount of body fat and need / want to build more muscle",
                ),
                PreferenceCard(
                  width: width,
                  height: height,
                  img: 'pref2.png',
                  heading: 'Lean & Tone',
                  subtext: "I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way",
                ),
                PreferenceCard(
                  width: width,
                  height: height,
                  img: 'pref3.png',
                  heading: 'Loose a Fat',
                  subtext:
                      "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass",
                ),
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 0.70,
              ),
            ),
            Container(
              width: width * 0.8,
              height: height * 0.1,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                "Tap on the path you wish to follow",
                style: kSubTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container greeting(width) {
    return Container(
      width: width*0.7,
      child: Center(
        child: Column(
          children: [
            Text(
              "What is your goal ?",
              style: kBigTextHeading.copyWith(fontSize: 20),
            ),
            Text(
              "It will help us to choose a best programme for you",
              style: kSubTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class PreferenceCard extends StatelessWidget {
  const PreferenceCard({
    Key? key,
    required this.width,
    required this.height,
    required this.img,
    required this.heading,
    required this.subtext,
  }) : super(key: key);

  final double width;
  final double height;
  final String img, heading, subtext;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Todo: add code to signup the user according to defined preference
        Navigator.pushReplacementNamed(context, Login.id);
      },
      child: Container(
        width: width * 0.8,
        height: height * 0.65,
        decoration: kRoundedContainerPurple.copyWith(gradient: kBlue_linear),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('Assets/SplashLogo/${this.img}'),
            Text(
              this.heading,
              style: kBigTextHeading.copyWith(color: Colors.white),
            ),
            Container(
              width: width * 0.6,
              child: Text(
                this.subtext,
                softWrap: true,
                textAlign: TextAlign.center,
                style: kSubTextStyle.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
