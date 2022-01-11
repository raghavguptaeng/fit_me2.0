// ignore: file_names
import 'package:fit_me/constants/constants.dart';
import 'package:flutter/material.dart';

import 'splash_2.dart';

class welcome extends StatelessWidget {
  static String id = '/welcomeScreen';

  welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            child: Image.asset('Assets/Logo/logo.png',height: height*0.08,),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              height: height*0.08,
              width: width*0.8,
              decoration: kRoundedBigButton,
              child: const Center(
                child: Text("Set Started",style: kBigButtonText,),
              ),
            ),
            onTap: (){
              Navigator.pushReplacementNamed(context, Splash2.id);
            },
          ),
        ],
      ),
    );
  }
}
