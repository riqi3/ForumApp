import 'package:flutter/material.dart';
import 'package:project_forum/home.dart';
import 'package:project_forum/provider/ForumTopicProvider.dart';
import 'package:provider/provider.dart';

import '../screens/LoginScreen.dart';

class TopicWidget extends StatelessWidget {
  const TopicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topic = Provider.of<TopicProvider>(context);

    return ListView.builder(
      itemCount: topic.allTopics.length,
      itemBuilder: ((context, index) => GestureDetector(
        onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
      },
        child: ListTile(
              leading: CircleAvatar(
          backgroundColor: const Color(0xff764abc),
          
        ),
              title: Text(topic.allTopics[index].topicTitle),
              subtitle: Text(topic.allTopics[index].topicDescription),
              trailing: IconButton(
                onPressed: () {
                  topic.deleteTopic(topic.allTopics[index]);
                },
                icon: const Icon(
                  Icons.delete,
                ),
              ),
            ),
      )),
    );
  }
}
