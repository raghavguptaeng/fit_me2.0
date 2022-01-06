import 'package:fit_me/Authentication/Signup/user_preference.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../contants/constants.dart';
class GetUserDetails extends StatelessWidget {
  const GetUserDetails({Key? key}) : super(key: key);
  static String id = '/getuserdetails';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("Assets/SplashLogo/userdet.png"),
            greeting(),
            Container(
              width: width*0.8,
              height: height*0.35,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FontAwesomeIcons.venusMars,size: height*0.05,),
                        SizedBox(
                          width: width*0.6,
                          height: height*0.1,
                          child: CupertinoPicker(
                            itemExtent: 40,
                            looping: true,
                            magnification: 1.2,
                            onSelectedItemChanged: (int value) {  },
                            children: [
                              Text("Male"),
                              Text("Female")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: width*0.6,

                            child: TextFormField(
                              decoration: kInputTextDecoration.copyWith(
                                hintText: "Your Weight",
                                prefixIcon: Icon(CupertinoIcons.speedometer),
                              ),
                              onChanged: (value) {
                                // this.first_name = value;
                              },
                              keyboardType: TextInputType.datetime,
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Container(
                            width: height*0.06,
                            height: height*0.06,
                            child: Center(
                              child: Text("KG",style: kBigTextHeading.copyWith(fontSize: 15,color: Colors.white),),
                            ),
                            decoration: kRoundedContainer,
                          )
                        ],
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: width*0.6,

                            child: TextFormField(
                              decoration: kInputTextDecoration.copyWith(
                                hintText: "Your Height",
                                prefixIcon: Icon(CupertinoIcons.arrow_up_arrow_down),
                              ),
                              onChanged: (value) {
                                // this.first_name = value;
                              },
                              keyboardType: TextInputType.datetime,
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Container(
                            width: height*0.06,
                            height: height*0.06,
                            child: Center(
                              child: Text("Ft5.10",style: kBigTextHeading.copyWith(fontSize: 15,color: Colors.white),),
                            ),
                            decoration: kRoundedContainer,
                          )
                        ],
                      )
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, GetUserPreference.id);
              },
              child: Container(
                width: width*0.8,
                height: height*0.1,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                decoration: kRoundedBigButton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Next",style: kBigButtonText,),
                    Icon(CupertinoIcons.right_chevron,color: Colors.white,)
                  ],
                ),
              ),
            )
          ],
        ),
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
