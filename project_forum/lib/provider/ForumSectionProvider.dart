import 'package:flutter/material.dart';
import 'dart:collection';

import 'package:project_forum/model/ForumSectionModel.dart';
class SectionProvider with ChangeNotifier {
  List<SectionModel> _sections = [];

  UnmodifiableListView<SectionModel> get allSections =>
      UnmodifiableListView(_sections);

    void add(SectionModel section) {
    _sections.add(section);
    notifyListeners();
  }

  void toggleSection(SectionModel section) {
    final sectionIndex = _sections.indexOf(section);
    _sections[sectionIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteSection(SectionModel section) {
    _sections.remove(section);
    notifyListeners();
  }
}
