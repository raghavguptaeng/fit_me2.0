import 'package:fit_me/models/water_intake.dart';
import 'package:get/state_manager.dart';

class WaterControllers extends GetxController{
  var water = <WaterIntakeModel>[].obs;
  var total = 0.obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    getWater();
  }
  void getWater()async{
    try{
      isLoading(true);
      await Future.delayed(Duration(seconds: 5));
      var waters = [
        WaterIntakeModel(time: '5am - 8am',quantity: 1000),
        WaterIntakeModel(time: '9am - 11am',quantity: 500),
        WaterIntakeModel(time: '11am - 2pm',quantity: 1500),
        WaterIntakeModel(time: '2pm - 4pm',quantity: 700),
        WaterIntakeModel(time: '4pm - now',quantity: 900),
      ];
      water.value = waters;
    }
    finally{
      isLoading(false);
    }
  }

  double getVal(){
    double val = 0;
    var _waterControllers = WaterControllers();
    for(int i=0 ; i<_waterControllers.water.length ; ++i){
      val+=_waterControllers.water[i].quantity;
    }
    print(val);
    return val;
  }


}