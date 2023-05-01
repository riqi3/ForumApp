class ForumModel {
  String forumTitle;
  String forumDescription;
  bool completed;

  ForumModel({
    required this.forumTitle,
    required this.forumDescription,
    this.completed = false,
  });

  void toggleCompleted() {
    completed = !completed;
  }
}
