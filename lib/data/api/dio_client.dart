import 'package:dio/dio.dart';

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
      baseUrl: "https://jsonplaceholder.typicode.com",
    ));

    dio.interceptors.add(LogInterceptor());
    return dio;
  }
}