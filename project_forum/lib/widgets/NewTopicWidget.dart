import 'package:flutter/material.dart';
import 'package:project_forum/model/ForumTopicModel.dart';
import 'package:project_forum/provider/ForumTopicProvider.dart';
import 'package:provider/provider.dart';

class NewTopicWidget extends StatefulWidget {
  const NewTopicWidget({super.key});

  @override
  State<NewTopicWidget> createState() => _NewTopicWidgetState();
}

class _NewTopicWidgetState extends State<NewTopicWidget> {
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
              final newTopic = TopicModel(
                topicTitle: title,
                completed: false,
                topicDescription: description,
              );

              context.read<TopicProvider>().add(newTopic);
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
