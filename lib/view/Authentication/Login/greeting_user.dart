
import 'package:fit_me/constants/constants.dart';
import 'package:fit_me/view/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Greeting extends StatelessWidget {
  Greeting(this.Name);
  String Name;
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('Assets/Login_and_others/greeting.png'),
            Center(child: TopHeading(width)),
            GestureDetector(
              onTap: () {
                // Navigator.pushReplacementNamed(context, GetUserDetails.id );
                //todo:send user name and user id to home screen
                Get.to(()=>Home(Uname: 'Raghav', uid: 'demo'));
              },
              child: Container(
                  height: height * 0.08,
                  width: width * 0.8,
                  decoration: kRoundedBigButton,
                  child: Center(
                    child: Text(
                      "Go To Home",
                      style: kBigTextHeading.copyWith(color: Colors.white),
                    ),
                  )),
            ),
          ],
        ),
      )
    );
  }

  Container TopHeading(width) {
    return Container(
      width: width*0.7,
      child: Center(
        child: Column(
          children: [
            Text(
              "Welcome,${this.Name}",
              style: kBigTextHeading.copyWith(fontSize: 20)
            ),
            Text(
              "You are all set now, let’s reach your goals together with us",
              style: kSubTextStyle.copyWith(
                fontSize: 16,
              ) ,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

}
