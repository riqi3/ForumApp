import 'package:project_forum/model/ForumCommentsModel.dart';

class TopicModel {
  int topicId;
  String topicTitle;
  String topicDescription;
  bool completed;
  List<Comments> comments = [];

  TopicModel({
    this.topicId = 0,
    required this.topicTitle,
    required this.topicDescription,
    this.completed = false,
  });

  List<Comments> get list => comments;
  int get id => topicId;
  String get title => topicTitle;
  String get description => topicDescription;

  set setTitle(String title){
    topicTitle = title;
  }

    set setDescription(String description){
    topicDescription = description;
  }

  void toggleCompleted() {
    completed = !completed;
  }
}
