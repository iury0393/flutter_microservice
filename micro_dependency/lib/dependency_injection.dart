import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:micro_dependency/shared/custom_dio.dart';

GetIt getIt = GetIt.instance;

void setup() {
  //GLOBAL
  getIt.registerFactory(() => Dio());
  getIt.registerSingleton<CustomDio>(CustomDio(getIt<Dio>()));
}
