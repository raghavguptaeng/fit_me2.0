import 'package:fit_me/contants/constants.dart';
import 'package:fit_me/graph/water.dart';
import 'package:flutter/material.dart';

class WaterIntake extends StatelessWidget {
  const WaterIntake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: kShadowContainer,
      width: width * 0.4,
      height: height * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height * 0.45,
            child: WaterGraph(),
          ),
          Container(
            height: height * 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Water Intake',
                      style: kBigTextHeading.copyWith(fontSize: width * 0.04),
                    ),
                    Text(
                      '4 Liters', //todo: add water intake
                      style:klinearTextBlue(width),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Real time updates',style: kSubTextStyle,),
                    waterIntake(width,'6am - 8am',600),
                    waterIntake(width,'9am - 11am',500),
                    waterIntake(width,'11am - 2pm',1000),
                    waterIntake(width,'2pm - 4pm',700),
                    waterIntake(width,'4pm - now',900)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding waterIntake(double width,time,intake) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(time,style: kSubTextStyle,),
                        Text('${intake.toString()}ml',style: klinearTextPurple(width),)
                      ],
                    ),
    );
  }
}
