import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart( sampleData1 ,
      swapAnimationDuration: const Duration(milliseconds: 450),
    );
  }

  LineChartData get sampleData1 => LineChartData(
    lineTouchData: lineTouchData1,
    gridData: gridData,
    titlesData: titlesData1,
    borderData: borderData,
    lineBarsData: lineBarsData1,
    minX: 0,
    maxX: 14,
    maxY: 4,
    minY: 0,
  );



  LineTouchData get lineTouchData1 => LineTouchData(
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      tooltipBgColor: Colors.black.withOpacity(1),
    ),
  );

  FlTitlesData get titlesData1 => FlTitlesData(
    bottomTitles: bottomTitles,
    rightTitles: SideTitles(showTitles: false),
    topTitles: SideTitles(showTitles: false),
    leftTitles: leftTitles(
      getTitles: (value) {
        switch (value.toInt()) {
          case 1:
            return '1m';
          case 2:
            return '2m';
          case 3:
            return '3m';
          case 4:
            return '5m';
        }
        return '';
      },
    ),
  );

  List<LineChartBarData> get lineBarsData1 => [
    lineChartBarData1_2,
  ];


  SideTitles leftTitles({required GetTitleFunction getTitles}) => SideTitles(
    getTitles: getTitles,
    showTitles: true,
    margin: 8,
    interval: 1,
    reservedSize: 40,
    getTextStyles: (context, value) => const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  );

  SideTitles get bottomTitles => SideTitles(
    showTitles: true,
    reservedSize: 22,
    margin: 10,
    interval: 1,
    getTextStyles: (context, value) => const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    getTitles: (value) {
      switch (value.toInt()) {
        case 2:
          return 'JAN';
        case 7:
          return 'JUN';
        case 12:
          return 'DEC';
      }
      return '';
    },
  );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
    show: true,
    border: const Border(
      bottom: BorderSide(color: Colors.white, width: 4),
      left: BorderSide(color: Colors.white,width: 4),
      right: BorderSide(color: Colors.transparent),
      top: BorderSide(color: Colors.transparent),
    ),
  );


  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
    isCurved: true,
    colors: [const Color(0xffaa4cfc)],
    barWidth: 8,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(show: false, colors: [
      const Color(0x00aa4cfc),
    ]),
    spots: const [ //todo: add chart data
      FlSpot(1, 1),
      FlSpot(2, 2.8),
      FlSpot(3, 1.2),
      FlSpot(4, 2.8),
      FlSpot(5, 2.6),
      FlSpot(6, 3.9),
      FlSpot(7, 1),
      FlSpot(8, 1.8),
      FlSpot(9, 1.2),
      FlSpot(10, 2.8),
      FlSpot(11, 2.6),
      FlSpot(12, 3.9),
    ],
  );
}

class ActivityStatus extends StatefulWidget {
  const ActivityStatus({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ActivityStatusState();
}

class ActivityStatusState extends State<ActivityStatus> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            gradient: LinearGradient(
              colors: [
                Color(0xFF9DCEFF),
                Color(0xFF92A3FD),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(
                    height: 37,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                      child: _LineChart(isShowingMainData: isShowingMainData),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}