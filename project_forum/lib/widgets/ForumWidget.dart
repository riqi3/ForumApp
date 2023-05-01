import 'package:flutter/material.dart';
import 'package:project_forum/provider/ForumSectionProvider.dart';
import 'package:provider/provider.dart';

class ForumWidget extends StatelessWidget {
  const ForumWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topic = Provider.of<ForumProvider>(context);

    return ListView.builder(
      itemCount: topic.allTopics.length,
      itemBuilder: ((context, index) => ListTile(
            leading: CircleAvatar(
        backgroundColor: const Color(0xff764abc),
        
      ),
            title: Text(topic.allTopics[index].forumTitle),
            subtitle: Text(topic.allTopics[index].forumDescription),
            trailing: IconButton(
              onPressed: () {
                topic.deleteTopic(topic.allTopics[index]);
              },
              icon: const Icon(
                Icons.delete,
              ),
            ),
          )),
    );
  }
}
