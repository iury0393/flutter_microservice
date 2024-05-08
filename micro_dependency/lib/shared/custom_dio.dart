import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:micro_dependency/shared/constants.dart';

class CustomDio {
  final Dio dio;
  CustomDio(this.dio) {
    dio.options.baseUrl = kBaseURL;
    dio.options.connectTimeout = const Duration(seconds: 5);
    dio.interceptors.add(AwesomeDioInterceptor());
  }

  Future<Response> customGet(String path) async {
    Response response;
    response = await dio.get(
      path,
      onReceiveProgress: (int sent, int total) {
        kLogger.i('$sent $total');
      },
    );
    kLogger.i(response.data);
    return response;
  }

  Future<Response> customPost(String path) async {
    Response response;
    response = await dio.post(
      path,
      onReceiveProgress: (int sent, int total) {
        kLogger.i('$sent $total');
      },
    );
    kLogger.i(response.data);
    return response;
  }
}
