import 'package:flutter/material.dart';
import 'dart:collection';

import '../model/ForumSectionModel.dart';

class ForumProvider with ChangeNotifier {
  List<ForumModel> _topics = [];

  UnmodifiableListView<ForumModel> get allTopics =>
      UnmodifiableListView(_topics);

  // void addTopic(String topic, String description) {
  //   _topics.add(ForumModel(forumTitle: topic, completed: false, forumDescription: description));
  //   notifyListeners();
  // } 

    void add(ForumModel forumTopic) {
    _topics.add(forumTopic);
    notifyListeners();
  }

  void toggleTopic(ForumModel topic) {
    final topicIndex = _topics.indexOf(topic);
    _topics[topicIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteTopic(ForumModel topic) {
    _topics.remove(topic);
    notifyListeners();
  }
}
