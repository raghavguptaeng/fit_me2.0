import 'package:fit_me/constants/constants.dart';
import 'package:fit_me/view/graph/calories_graph.dart';
import 'package:flutter/material.dart';

class Calories extends StatelessWidget {
  const Calories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Calories",style: kBigTextHeading.copyWith(fontSize: width * 0.04),),
          Text("760 kCal",style: klinearTextBlue(width*0.8),),
          Center(
            child: Container(
                height: height*0.15,
                child: CaloriesChart()),
          ),
        ],
    ),
      ),width: width*0.4,height: height*0.25,decoration: kShadowContainer,);
  }
}
