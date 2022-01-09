import 'package:fit_me/Home/home.dart';
import 'package:fit_me/contants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TodaysTarget extends StatelessWidget {
  const TodaysTarget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: ()=>Navigator.pop(context),
          child: Container(
              margin: EdgeInsets.all(5),
              height: height*0.06,
              width: height*0.06,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(CupertinoIcons.left_chevron,color: Colors.black,)),
        ),
        title: Center(
          child: Text("Activity Tracker",style: kBigTextHeading,),
        ),
        actions: [Container(width: width*0.13,)],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.all(width*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height*0.2,
              decoration: kBlueContainer,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Row(
              children: [
                Text("Activity Progress",style: kBigTextHeading.copyWith(fontSize: 15),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
