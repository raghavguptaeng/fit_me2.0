
import 'package:fit_me/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class latestCard extends StatelessWidget {
  var height,width;
  latestCard(this.height,this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(12),
      width:width ,
      height: height*0.1,
      decoration: kShadowContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Drinking 300ml water",style: kSubTextStyle.copyWith(fontWeight: FontWeight.bold),),
              Text("About 3 min ago",style: kSubTextStyle,),
            ],
          ),
          Icon(CupertinoIcons.ellipsis_vertical),
        ],
      ),
    );
  }
}