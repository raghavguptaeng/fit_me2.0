import 'package:fit_me/models/water_intake.dart';
import 'package:get/state_manager.dart';

class WaterControllers extends GetxController{
  var water = <WaterIntakeModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    getWater();
  }
  void getWater()async{
    await Future.delayed(Duration(milliseconds: 25));
    var waters = [
      WaterIntakeModel(quantity: 500,time: '6am - 8am'),
      WaterIntakeModel(time: '6am - 8am',quantity: 600),
      WaterIntakeModel(time: '9am - 11am',quantity: 500),
      WaterIntakeModel(time: '11am - 2pm',quantity: 1000),
      WaterIntakeModel(time: '2pm - 4pm',quantity: 700),
      WaterIntakeModel(time: '4pm - now',quantity: 900),
    ];
    water.value = waters;
  }
}