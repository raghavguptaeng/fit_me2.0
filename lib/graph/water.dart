import 'package:fit_me/contants/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class WaterGraph extends StatefulWidget {
  const WaterGraph({Key? key}) : super(key: key);

  @override
  _WaterGraphState createState() => _WaterGraphState();
}

class _WaterGraphState extends State<WaterGraph> {
  double val = 69.420; //todo: add value here
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      child: SfLinearGauge(
        orientation: LinearGaugeOrientation.vertical,
        interval: 10,
        showLabels: false,
        showTicks: false,
        axisTrackStyle: LinearAxisTrackStyle(
          thickness: 25,
          edgeStyle: LinearEdgeStyle.bothCurve,
          borderWidth: 1,
          borderColor: Colors.grey[350],
          color:Colors.grey[350],
        ),
        barPointers: <LinearBarPointer>[
          LinearBarPointer(
              enableAnimation: false,
              value: val,
              thickness: 25,
              edgeStyle: LinearEdgeStyle.bothCurve,
              // color: kPurple_linear.colors[0],
              shaderCallback: (Rect bounds) {
                return kWaterIntakeLinear.createShader(bounds);
              }
          )
        ],
      ),
    );
  }
}
