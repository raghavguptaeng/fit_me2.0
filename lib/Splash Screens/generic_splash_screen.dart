// ignore: file_names
import 'package:flutter/material.dart';

import '../contants/constants.dart';

class Splash extends StatelessWidget {
  var Heading,subText,img,butt,nextScr;
  Splash({this.Heading,this.subText,this.img,this.butt,this.nextScr});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("Assets/SplashLogo/"+this.img,alignment: Alignment.topRight,scale: 0.9,),
        Container(
          margin: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.Heading,style: kBigTextHeading ,),
              Text(this.subText, style: kSubTextStyle,),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, this.nextScr);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('Assets/SplashLogo/'+this.butt),
              ),
            )
          ],
        )
      ],
    );
  }
}