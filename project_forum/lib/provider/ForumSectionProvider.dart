import 'package:flutter/material.dart';
import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_forum/model/ForumSectionModel.dart';

class SectionProvider with ChangeNotifier {
  SectionProvider() {
    this.fetchSection();
  }

  List<SectionModel> sections = [];

  UnmodifiableListView<SectionModel> get allSections =>
      UnmodifiableListView(sections);

  void toggleSection(SectionModel section) {
    final sectionIndex = sections.indexOf(section);
    sections[sectionIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteSection(SectionModel section) async {
    final url = 'http://10.0.2.2:8000/apis/v1/${section.id}/';
    final response = await http.delete(Uri.parse(url));

    if (response.statusCode == 204) {
      sections.remove(section);
      notifyListeners();
    }
  }

  void add(SectionModel section) async {
    final url = 'http://10.0.2.2:8000/apis/v1/?format=json';
    final response = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(section));
    if (response.statusCode == 201) {
      section.id = json.decode(response.body)['id'];
      sections.add(section);
      notifyListeners();
    }
  }

  fetchSection() async {
    // final url = 'http://127.0.0.1:8000/apis/v1/?format=json';
    final url = 'http://10.0.2.2:8000/apis/v1/?format=json';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body) as List;
      sections = data
          .map<SectionModel>((json) => SectionModel.fromJson(json))
          .toList();
      notifyListeners();
    } else {
      print('a network error occured');
    }
  }
}
