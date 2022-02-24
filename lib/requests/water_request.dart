import 'package:dio/dio.dart';
import 'package:fit_me/api/api.dart';
import 'package:fit_me/models/water_intake.dart';

class remoteServices{
  static Future<List<WaterIntakeModel>> fetch_water() async{
    var dio = Dio();
    final response = await dio.get(water_api);
    print(response.data['data']);
    List<WaterIntakeModel> lst = [];
    for(int i=0 ; i<response.data['data'].length ; ++i){
      print(response.data['data'][i]);
      lst.add(WaterIntakeModel(time: response.data['data'][i]["time"].toString(), quantity: response.data['data'][i]['quantity']));
    }
    return(lst);
  }
}