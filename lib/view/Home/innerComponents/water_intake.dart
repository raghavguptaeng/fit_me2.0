import 'package:fit_me/constants/constants.dart';
import 'package:fit_me/controllers/water_controller.dart';
import 'package:fit_me/view/graph/water.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WaterIntake extends StatelessWidget {
  WaterIntake({Key? key}) : super(key: key);
  final WaterControllers _waterControllers = Get.put(WaterControllers());
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    Text('Real time updates',style: kSubTextStyle.copyWith(fontSize: width*0.030),),
                    Obx((){
                      if(_waterControllers.isLoading.value) {
                        return Container(
                          width: width*0.2,
                          height: height*0.35,
                          child: Center(child: CupertinoActivityIndicator()),
                        );
                      }
                      else {
                        return SizedBox(
                          width: width*0.2,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _waterControllers.water.length,
                            itemBuilder: (context,index){
                              var data = _waterControllers.water[index];
                              return waterIntake(width,data.time,data.quantity);
                            },
                          ),
                        );
                      }
                      // return WaterIntake()
                    }
                    )
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
                        Text(time,style: kSubTextStyle.copyWith(fontSize: width*0.025),),
                        Text('${intake.toString()}ml',style: klinearTextPurple(width*0.6),)
                      ],
                    ),
    );
  }
}
