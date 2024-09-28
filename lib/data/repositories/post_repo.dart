import 'dart:async';
import 'package:dio_16032024/data/api/api_service.dart';
import 'package:dio_16032024/data/api/dto/post_dto.dart';

class PostRepository {
  final ApiService _service = ApiService();

  Future<List<PostDTO>> getPosts() {
    Completer<List<PostDTO>> completer = Completer();
    _service.getPosts().then((response) {
      List<PostDTO> listPostDTO = (response.data as List)
          .map((element) => PostDTO.fromJson(element))
          .toList();
      completer.complete(listPostDTO);
    }).catchError((error) => completer.completeError(error));

    return completer.future;
  }
}