
import 'package:dio/dio.dart';
import 'package:yomu_app/utils/constants.dart';
import 'package:yomu_app/utils/custom_dio/interceptors.dart';

class CustomDio extends Dio{

  CustomDio(){
    options.baseUrl = Constants.BASE_URL;
    options.connectTimeout = 5000;
    interceptors.add(CustomIntercetors());
  }
}