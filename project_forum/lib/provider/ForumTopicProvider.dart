import 'package:flutter/material.dart';
import 'dart:collection';

import '../model/ForumTopicModel.dart';

class TopicProvider with ChangeNotifier {
  List<TopicModel> _topics = [];

  UnmodifiableListView<TopicModel> get allTopics =>
      UnmodifiableListView(_topics);

  void add(TopicModel Topic) {
    _topics.add(Topic);
    notifyListeners();
  }

  void toggleTopic(TopicModel topic) {
    final topicIndex = _topics.indexOf(topic);
    _topics[topicIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteTopic(TopicModel topic) {
    _topics.remove(topic);
    notifyListeners();
  }
}
