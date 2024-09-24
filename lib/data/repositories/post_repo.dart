import 'package:dio/dio.dart';
import 'package:dio_16032024/data/api/api_service.dart';
import 'package:dio_16032024/data/api/dto/post_dto.dart';

class PostRepository {
  final ApiService _service = ApiService();

  void getPosts() {
    _service.getPosts()
        .then((response) {
          List<PostDTO> listPostDTO = (response.data as List).map((element) => PostDTO.fromJson(element)).toList();
          print(listPostDTO);
        })
        .catchError((error) => print("Error ${error.toString()}"));
  }
}


void main() {
  var repo = PostRepository();
  repo.getPosts();
}

