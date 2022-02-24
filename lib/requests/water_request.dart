import 'package:dio/dio.dart';
import 'package:fit_me/api/api.dart';
import 'package:fit_me/models/water_intake.dart';

class remoteServices{
  static Future<List<WaterIntakeModel>> fetch_water() async{
    var dio = Dio();
    final response = await dio.get(water_api);
    print(response.data['data']);
    return(response.data['data']);
  }
}