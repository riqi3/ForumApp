import 'package:project_forum/model/ForumTopicModel.dart';

class SectionModel {
  String sectionTitle;
  String sectionDescription;
  bool completed;
  List<TopicModel> topics = [];


  SectionModel({
    required this.sectionTitle,
    required this.sectionDescription,
    this.completed = false,
  });

  void addTopic(TopicModel topic){
    topics.add(topic);
  }

  

  void toggleCompleted() {
    completed = !completed;
  }
}
