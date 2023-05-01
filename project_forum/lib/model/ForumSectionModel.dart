class SectionModel {
  String sectionTitle;
  String sectionDescription;
  bool completed;

  SectionModel({
    required this.sectionTitle,
    required this.sectionDescription,
    this.completed = false,
  });

  void toggleCompleted() {
    completed = !completed;
  }
}
