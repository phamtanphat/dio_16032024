import 'dart:async';

import 'package:dio_16032024/common/base_bloc.dart';
import 'package:dio_16032024/common/base_event.dart';
import 'package:dio_16032024/data/model/post.dart';
import 'package:dio_16032024/data/repositories/post_repo.dart';
import 'package:dio_16032024/presentation/widget/bloc/post_event.dart';

class PostBloc extends BaseBloc {
  final PostRepository _repository = PostRepository();
  final StreamController<List<Post>> _postController = StreamController();

  Stream<List<Post>> get postStream => _postController.stream;

  @override
  void dispatch(BaseEvent event) {
    switch (event) {
      case PostEvent _:
        _fetchPosts();
        break;
    }
  }

  void _fetchPosts() {
    _repository.getPosts().then((listPostDTO) {
      List<Post> listPost =
          listPostDTO.map((e) => Post.convertToPost(e)).toList();
      _postController.sink.add(listPost);
    }).catchError((error) {
      messageSink.add(error);
    });
  }
}
