import 'package:flutter/material.dart';

import '../../constants.dart';
class GetUserDetails extends StatelessWidget {
  const GetUserDetails({Key? key}) : super(key: key);
  static String id = '/getuserdetails';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("Assets/SplashLogo/userdet.png"),
          greeting(),
        ],
      ),
    );
  }

  Container greeting() {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              "Let's complete your profile",
              style: kBigTextHeading.copyWith(fontSize: 20),
            ),
            Text(
              "It will help us to know more about you!",
              style: kSubTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
