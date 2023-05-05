class TopicModel {
  
  String topicTitle;
  String topicDescription;
  bool completed;

  

  TopicModel({
    required this.topicTitle,
    required this.topicDescription,
    this.completed = false,
  });

  void toggleCompleted() {
    completed = !completed;
  }
}
