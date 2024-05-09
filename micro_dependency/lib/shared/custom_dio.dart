import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class CustomDio {
  final Dio dio;
  final String? baseURL;
  CustomDio(this.dio, {this.baseURL}) {
    dio.options.baseUrl = baseURL ?? '';
    dio.options.connectTimeout = const Duration(seconds: 5);
    dio.interceptors.add(AwesomeDioInterceptor());
  }

  Future<Response> customGet(String path) async {
    Response response;
    response = await dio.get(
      path,
      onReceiveProgress: (int sent, int total) {
        logger.i('$sent $total');
      },
    );
    logger.i(response.data);
    return response;
  }

  Future<Response> customPost(String path) async {
    Response response;
    response = await dio.post(
      path,
      onReceiveProgress: (int sent, int total) {
        logger.i('$sent $total');
      },
    );
    logger.i(response.data);
    return response;
  }
}
