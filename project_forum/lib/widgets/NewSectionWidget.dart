import 'package:flutter/material.dart';
import 'package:project_forum/model/ForumSectionModel.dart';
import 'package:project_forum/model/ForumSectionModel.dart';
import 'package:project_forum/provider/ForumSectionProvider.dart';
import 'package:provider/provider.dart';

class NewSectionWidget extends StatefulWidget {
  const NewSectionWidget({super.key});

  @override
  State<NewSectionWidget> createState() => _NewSectionWidgetState();
}

class _NewSectionWidgetState extends State<NewSectionWidget> {
  late final TextEditingController _controllerTitle;
  late final TextEditingController _controllerDescription;

  @override
  void initState() {
    _controllerTitle = TextEditingController();
    _controllerDescription = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controllerTitle.dispose();
    _controllerDescription.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'add new section',
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controllerTitle,
            decoration: const InputDecoration(
              hintText: 'Section Name',
            ),
          ),
          TextField(
            controller: _controllerDescription,
            decoration: const InputDecoration(
              hintText: 'Description',
            ),
          ),
          TextButton(
            onPressed: () {
              final title = _controllerTitle.text;
              final description = _controllerDescription.text;
              final newSection = SectionModel(id: 0,sectionTitle: title, sectionDescription: description);
              context.read<SectionProvider>().add(newSection);
              Navigator.of(context).pop();
            },
            child: Text(
              'add',
            ),
          ),
        ],
      ),
    );
  }
}
