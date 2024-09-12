import 'package:dio/dio.dart';

class DioClient {
  // Tao ra function viec khoi tao dio
  // Tao ra function khoi tao request

  static Dio? _dio;

  static Dio getDio() {
    return _dio ??= Dio();
  }
}

class Person {
  final String name;

  const Person(this.name);

  @override
  bool operator == (Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType &&
              name == other.name;

  @override
  int get hashCode => name.hashCode;
}

void main() {
  Person person1 = Person("phat1");

  Person person2 = Person("phat");

  print(person1.hashCode);
  print(person2.hashCode);
}
