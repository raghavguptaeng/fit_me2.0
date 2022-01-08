import 'package:fit_me/Home/innerComponents/calories.dart';
import 'package:fit_me/Home/innerComponents/water_intake.dart';
import 'package:fit_me/contants/constants.dart';
import 'package:fit_me/graph/activity_status.dart';
import 'package:fit_me/graph/calories_graph.dart';
import 'package:fit_me/graph/water.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class Home extends StatefulWidget {
  // ignore: non_constant_identifier_names
  Home({required this.Uname,required this.uid});
  String Uname,uid;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopGreeting(width),
              Center(child: BmiCard(width, height)),
              Center(child: Today_Target_card(width, height)),
              ActivityStatusText(),
              ActivityStatus(),
              ActivityContent(width, height),
              SizedBox(height: height*0.2,),
            ],
          ),
        ),
      ),
    );
  }

  Container ActivityContent(double width, double height) {
    return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WaterIntake(),
                  Column(
                    children: [
                    Container(width: width*0.4,height: height*0.23,decoration: kShadowContainer,),
                    SizedBox(height: height*0.04,),
                    Calories(),
                  ],)
                ],
              ),
            );
  }

  Padding ActivityStatusText() {
    return Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                  'Activity Status',
                  style: kBigTextHeading.copyWith(fontSize: 20)
              ),
            );
  }

  Container Today_Target_card(double width, double height) {
    return Container(
              width: width*0.9,
              height: height*0.08,
              decoration: BoxDecoration(
                  color: Color(0xFFCCDCFD),
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Today Target",style: kBigTextHeading.copyWith(fontSize: 15),),
                  GestureDetector(
                    onTap: () {
                      //todo:add Target Button Here
                    },
                    child: Container(
                        height: height * 0.05,
                        width: width * 0.25,
                        decoration: kRoundedBigButton.copyWith(
                            gradient: kPurple_linear
                        ),
                        child: Center(
                          child: Text(
                            "Check",
                            style: kBigTextHeading.copyWith(color: Colors.white,fontSize: 13),
                          ),
                        )),
                  ),
                ],
              ),
            );
  }

  Padding TopGreeting(width) {
    return Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back,",
                        style: kSubTextStyle.copyWith(
                            fontSize: 16,
                            color: Colors.grey
                        ) ,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                          widget.Uname,
                          style: kBigTextHeading.copyWith(fontSize: 20)
                      ),
                    ],
                  ),
                  SizedBox(width: 1,),
                ],
              ),
            );
  }

  Container BmiCard(double width, double height) {
    return Container(
      margin: EdgeInsets.all(10),
      width: width*0.9,
      height: height*0.15,
      decoration:kBmiCardDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                  "BMI (Body Mass Index)",
                  style: kBigTextHeading.copyWith(fontSize: 13,color: Colors.white)
              ),
              Text(
                "You have a normal weight",
                style: kSubTextStyle.copyWith(
                    fontSize: 10,
                    color: Colors.white
                ) ,
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () {
                  //todo:add bmi details
                },
                child: Container(
                    height: height * 0.05,
                    width: width * 0.35,
                    decoration: kRoundedBigButton.copyWith(
                        gradient: kPurple_linear
                    ),
                    child: Center(
                      child: Text(
                        "View More",
                        style: kBigTextHeading.copyWith(color: Colors.white,fontSize: 13),
                      ),
                    )),
              ),
            ],
          ),
          Container(
            width: width*0.4,
            height: height*0.45,
            child: _buildDefaultPieChart(width),
          )
        ],
      ),
    );
  }
  // makes Pie Chart
  SfCircularChart _buildDefaultPieChart(width) {
    return SfCircularChart(
      palette: [Colors.white,kPurple],
      series: _getDefaultPieSeries(width),
    );
  }
  List<PieSeries<ChartSampleData, String>> _getDefaultPieSeries(width) {
    final List<ChartSampleData> pieData = <ChartSampleData>[
      ChartSampleData('David', 70,' '),
      ChartSampleData('Steve', 30, '13.5'),
    ];
    return <PieSeries<ChartSampleData, String>>[
      PieSeries<ChartSampleData, String>(
          explode: true,
          explodeIndex: 0,
          explodeOffset: '25%',
          radius: (width*0.12).toString(),
          dataSource: pieData,
          strokeColor: Colors.white,
          xValueMapper: (ChartSampleData data, _) => data.x as String,
          yValueMapper: (ChartSampleData data, _) => data.y,
          dataLabelMapper: (ChartSampleData data, _) => data.text,
          startAngle: 90,
          endAngle: 90,
          dataLabelSettings: const DataLabelSettings(isVisible: true,textStyle: TextStyle(
            color: Colors.white
          ))),
    ];
  }
}

class ChartSampleData {
  var x , y , text;
  ChartSampleData(this.x,this.y,this.text);
}
