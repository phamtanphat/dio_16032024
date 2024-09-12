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

// Demo so sanh cac object voi nhau
// class Person {
//   final String name;
//
//   const Person(this.name);
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Person && runtimeType == other.runtimeType && name == other.name;
//
//   @override
//   int get hashCode => name.hashCode;
// }
//
// void main() {
//   Person person1 = Person("phat1");
//
//   Person person2 = Person("phat");
//
//   print(person1.hashCode);
//   print(person2.hashCode);
// }
