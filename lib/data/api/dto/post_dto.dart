class PostDTO {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostDTO({this.userId, this.id, this.title, this.body});

  PostDTO.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}