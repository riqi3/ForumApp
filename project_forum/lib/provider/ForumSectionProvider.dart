import 'package:flutter/material.dart';
import 'dart:collection';

import 'package:project_forum/model/ForumSectionModel.dart';
class SectionProvider with ChangeNotifier {
  List<SectionModel> sections = [];

  UnmodifiableListView<SectionModel> get allSections =>
      UnmodifiableListView(sections);

  void add(SectionModel section) {
    sections.add(section);
    notifyListeners();
  }

  void toggleSection(SectionModel section) {
    final sectionIndex = sections.indexOf(section);
    sections[sectionIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteSection(SectionModel section) {
    sections.remove(section);
    notifyListeners();
  }
}
