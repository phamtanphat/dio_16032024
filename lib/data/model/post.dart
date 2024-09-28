class Post {
  int userId;
  int id;
  String title;
  String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body
  });

  Post.init() : this(userId: 0, id: 0, title: "", body: "");
}

