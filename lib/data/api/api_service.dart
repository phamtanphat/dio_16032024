import 'package:dio/dio.dart';
import 'package:dio_16032024/data/api/dio_client.dart';

class ApiService {
   final Dio _dio = DioClient.getDio();
   
   Future<Response<dynamic>> getPosts() {
     return _dio.get("posts");
   }
}