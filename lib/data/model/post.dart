import 'package:dio_16032024/data/api/dto/post_dto.dart';

class Post {
  int userId;
  int id;
  String title;
  String body;

  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  Post.init() : this(userId: 0, id: 0, title: "", body: "");

  static Post convertToPost(PostDTO postDTO) {
    return Post(
        userId: postDTO.userId ?? 0,
        id: postDTO.id ?? 0,
        title: postDTO.title ?? "",
        body: postDTO.body ?? ""
    );
  }
}
