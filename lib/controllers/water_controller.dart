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
      WaterIntakeModel(quantity: 500,time: '6am - 8am')
    ];
    water.value = waters;
  }
}