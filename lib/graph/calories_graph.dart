

/// Package import
import 'package:fit_me/contants/constants.dart';
import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:syncfusion_flutter_charts/src/circular_chart/utils/enum.dart' as corner;

/// Local imports

/// Render the doughnut series with center elevation.
class CaloriesChart extends StatefulWidget {
  const CaloriesChart({Key? key}) : super(key: key);

  @override
  _CaloriesChartState createState() => _CaloriesChartState();
}

class _CaloriesChartState extends State<CaloriesChart> {
  @override
  Widget build(BuildContext context) {
    return _buildElevationDoughnutChart();
  }


  /// Returns the circular charts with center elevation dughnut series.
  SfCircularChart _buildElevationDoughnutChart() {
    return SfCircularChart(
      /// It used to set the annotation on circular chart.
      annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(
            height: '200%',
            width: '200%',
            widget: PhysicalModel(
              shape: BoxShape.circle,
              elevation: 10,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Container(),
            )),
        CircularChartAnnotation(
            height: '170%',
            width: '170%',
            widget: PhysicalModel(
              shape: BoxShape.circle,
              elevation: 20,
              shadowColor: Colors.black,
              color: Color(0xFF92A3FD),
              child: Container(),
            )),
        CircularChartAnnotation(
            widget: Container(
              width: 33,
              child: const Text('230Kcal left',softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white, fontSize:15)),
            ))
      ],
      title: ChartTitle(
          text: true ? '' : 'Progress of a task',
          textStyle: const TextStyle(fontSize: 20)),
      series: _getElevationDoughnutSeries(),
    );
  }

  /// Returns the doughnut series which need to be center elevation.
  List<DoughnutSeries<ChartSampleData, String>> _getElevationDoughnutSeries() {
    return <DoughnutSeries<ChartSampleData, String>>[
      DoughnutSeries<ChartSampleData, String>(
          dataSource: <ChartSampleData>[
            ChartSampleData(
                x: 'A',
                y: 62,
                pointColor:kPurple),
            ChartSampleData(
                x: 'B',
                y: 38,
                pointColor: Colors.white)
          ],
          cornerStyle: corner.CornerStyle.bothCurve,
          animationDuration: 2,
          radius: '60',
          xValueMapper: (ChartSampleData data, _) => data.x as String,
          yValueMapper: (ChartSampleData data, _) => data.y,
          pointColorMapper: (ChartSampleData data, _) => data.pointColor)
    ];
  }
}


class ChartSampleData {
  var x,y,pointColor;
  ChartSampleData({this.x,this.y,this.pointColor});
}
