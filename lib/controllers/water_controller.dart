import 'package:fit_me/models/water_intake.dart';
import 'package:fit_me/requests/water_request.dart';
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
      var waters = await remoteServices.fetch_water() as List;
      List<WaterIntakeModel> lst = [];
      for(int i=0 ; i<waters.length ; ++i){
        lst.add(WaterIntakeModel(time: waters[i]["time"].toString(), quantity: waters[i]['quantity']));
      }
      print(waters);
      if(waters!=null){
        water.value = lst;
      }
      else{
        water.value = [];
      }
    }
    finally{
      isLoading(false);
    }
  }
}