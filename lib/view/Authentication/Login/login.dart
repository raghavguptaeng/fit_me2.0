
import 'package:fit_me/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'greeting_user.dart';


class Login extends StatelessWidget {
  static String id = '/Login';
  String email = '', password = '';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: height * 0.90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopHeading(),
                UserDetails(height, width),
                RegisterButtonAndSignUPWithGoogle(height, width, context),
                LoginIfAccountPresent()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row LoginIfAccountPresent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont Have an account yet?",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Register",
          style: TextStyle(fontSize: 16, color: Colors.purpleAccent),
        )
      ],
    );
  }

  Container RegisterButtonAndSignUPWithGoogle(double height, double width, context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.pushReplacementNamed(context, GetUserDetails.id );
              //todo:send user name to greeting screen
              Get.to(()=>Greeting('Raghav'));
            },
            child: Container(
                height: height * 0.08,
                width: width * 0.8,
                decoration: kRoundedBigButton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.signInAlt,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Login",
                      style: kBigTextHeading.copyWith(color: Colors.white),
                    ),
                  ],
                )),
          ),
          RowWithOrandLine(width),
          Container(
            height: height * 0.1,
            width: height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black, width: 2)),
            child: Center(
              child: Image.asset(
                "Assets/Logo/google.png",
                height: height * 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox UserDetails(double height, double width) {
    return SizedBox(
      height: height * 0.4,
      width: width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: kInputTextDecoration.copyWith(
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      )),
                  onChanged: (value) {
                    this.email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: kInputTextDecoration.copyWith(
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password",
                  ),
                  onChanged: (value) {
                    this.password = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ],
          ),
          Text("Forgot Your password?")
        ],
      ),
    );
  }

  Row RowWithOrandLine(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: width * 0.4,
          height: 0.5,
          color: Colors.black,
        ),
        Text(
          "OR",
          style: kBigTextHeading.copyWith(fontSize: 20),
        ),
        Container(
          width: width * 0.4,
          height: 0.5,
          color: Colors.black,
        )
      ],
    );
  }

  Container TopHeading() {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              "Hey There,",
              style: kSubTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            Text(
              "Create An Account",
              style: kBigTextHeading.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
