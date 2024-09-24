import 'package:dio/dio.dart';
import 'package:dio_16032024/common/app_constant.dart';

class DioClient {
  static Dio? _dio;

  static Dio getDio() {
    return _dio ??= _createDio();
  }

  static Dio _createDio() {
    var dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      baseUrl: AppConstant.BASE_URL,
    ));

    dio.interceptors.add(LogInterceptor());
    return dio;
  }
}