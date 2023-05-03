import 'package:project_forum/model/ForumTopicModel.dart';

class SectionModel {
  int id;
  String sectionTitle;
  String sectionDescription;
  bool completed;
  List<TopicModel> topics = [];

  SectionModel({
    required this.id,
    required this.sectionTitle,
    required this.sectionDescription,
    this.completed = false,
  });

  factory SectionModel.fromJson(Map<String, dynamic> json) {
    return SectionModel(
      id: json['id'],
      sectionTitle: json['title'],
      sectionDescription: json['description'],
    );
  }

  void addTopic(TopicModel topic) {
    topics.add(topic);
  }

  void toggleCompleted() {
    completed = !completed;
  }

  dynamic toJson() => {
        'id': id,
        'title': sectionTitle,
        'description': sectionDescription,
      };
}
