import 'package:fit_me/constants/constants.dart';
import 'package:fit_me/controllers/water_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class WaterGraph extends StatefulWidget {
  const WaterGraph({Key? key}) : super(key: key);

  @override
  _WaterGraphState createState() => _WaterGraphState();
}

class _WaterGraphState extends State<WaterGraph> {
  final WaterControllers _waterControllers = Get.find();

  double getVal(){
    int val = 0;
    for(int i=0 ; i<_waterControllers.water.length ; ++i){
      val+=_waterControllers.water[i].quantity;
    }
    print(val);
    return val/100;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=>ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          child: SfLinearGauge(
            orientation: LinearGaugeOrientation.vertical,
            interval: 10,
            showLabels: false,
            showTicks: false,
            axisTrackStyle: LinearAxisTrackStyle(
              thickness: 20,
              edgeStyle: LinearEdgeStyle.bothCurve,
              borderWidth: 1,
              borderColor: Colors.grey[350],
              color:Colors.grey[350],
            ),
            barPointers: <LinearBarPointer>[
              LinearBarPointer(
                  enableAnimation: true,
                  value: getVal().toDouble(),
                  thickness: 20,
                  edgeStyle: LinearEdgeStyle.bothCurve,
                  shaderCallback: (Rect bounds) {
                    return kWaterIntakeLinear.createShader(bounds);
                  }
              )
            ],
          ),
        )
    );
  }
}
