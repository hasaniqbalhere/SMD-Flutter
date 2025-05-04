class Post {
  final int userID;
  final int id;
  final String title;
  final String body;

  Post({
    required this.userID,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userID: json['userID'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
