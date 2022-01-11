import 'package:fit_me/constants/constants.dart';
import 'package:flutter/material.dart';
class Steps extends StatelessWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Steps Taken",style: kBigTextHeading.copyWith(fontSize: width * 0.04),),
          Image.asset('Assets/images/foot.png',height: height*0.10,),
          Text("4269",style: klinearTextBlue(width),),
        ],
      ),
      width: width*0.4,height: height*0.23,decoration: kShadowContainer,);
  }
}
