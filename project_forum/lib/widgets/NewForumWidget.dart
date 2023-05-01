import 'package:flutter/material.dart';
import 'package:project_forum/model/ForumSectionModel.dart';
import 'package:project_forum/provider/ForumSectionProvider.dart';
import 'package:provider/provider.dart';

class NewForumWidget extends StatefulWidget {
  const NewForumWidget({super.key});

  @override
  State<NewForumWidget> createState() => _NewForumWidgetState();
}

class _NewForumWidgetState extends State<NewForumWidget> {
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
          'add new topic',
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controllerTitle,
            decoration: const InputDecoration(
              hintText: 'Any topics in mind?',
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
              final newTopic = ForumModel(
                forumTitle: title,
                completed: false,
                forumDescription: description,
              );

              context.read<ForumProvider>().add(newTopic);
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
