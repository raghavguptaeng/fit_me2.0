import 'package:fit_me/Home/home.dart';
import 'package:fit_me/contants/constants.dart';
import 'package:fit_me/graph/activity_progress.dart';
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
              child: Padding(
                padding: EdgeInsets.all(width*0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Today Target",style: kBigTextHeading.copyWith(fontSize: 15),),
                        Container(
                          height: height*0.04,
                          width: height*0.04,
                          decoration: BoxDecoration(
                              gradient: kBlue_linear,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(CupertinoIcons.add,color: Colors.white,),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Target_Card(width: width, height: height,image: 'foot.png',title: 'Foot Steps',value: '2400',),
                        Target_Card(width: width, height: height, image: 'water.png',title: 'Water Intake',value: '8L',),
                      ],
                    )
                  ],
                ),
              ),
              width: width,
              height: height*0.2,
              decoration: kBlueContainer,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Row(
              children: [
                Text("Activity Progress",style: kBigTextHeading.copyWith(fontSize: 15),),
              ],
            ),
            Activity_Progress(),
          ],
        ),
      ),
    );
  }
}

class Target_Card extends StatelessWidget {
  const Target_Card({
    Key? key,
    required this.width,
    required this.height, required this.image, required this.title, required this.value,
  }) : super(key: key);

  final double width;
  final double height;
  final String image,title,value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width*0.37,
      height: height*0.1,
      decoration: kShadowContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('Assets/images/${image}',height: height*0.045,),
          Container(
            width: width*0.27,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(value,style: klinearTextBlue(width),),
                Text(title,style: kSubTextStyle,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
