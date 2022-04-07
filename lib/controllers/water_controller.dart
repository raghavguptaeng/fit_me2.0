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
    totalQty();
  }
  void getWater()async{
    try{
      isLoading(true);
      var waters = await remoteServices.fetch_water();
      print(waters);
      if(waters!=null){
        water.value = waters;
      }
      else{
        water.value = [];
      }
    }
    finally{
      isLoading(false);
    }
  }

  Future<void> totalQty() async {
    var tot = 0;
    var waters = await remoteServices.fetch_water();
    for(int i=0 ; i<waters.length ; ++i){
      tot+=waters[i].quantity;
    }
    total.value = tot;
  }
}