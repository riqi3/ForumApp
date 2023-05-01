import 'package:flutter/material.dart';
import 'package:project_forum/screens/TopicScreen.dart';
 
import 'package:provider/provider.dart';

import '../provider/ForumSectionProvider.dart';
import '../provider/ForumTopicProvider.dart';
import '../screens/LoginScreen.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final section = Provider.of<SectionProvider>(context);
    final topic = Provider.of<TopicProvider>(context);

    return ListView.builder(
      itemCount: section.allSections.length,
      itemBuilder: ((context, index) => GestureDetector(
        onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TopicScreen()));
      },
        child: ListTile(
              leading: CircleAvatar(
          backgroundColor: const Color(0xff764abc),
          
        ),
              title: Text(section.allSections[index].sectionTitle),
              subtitle: Text(section.allSections[index].sectionDescription),
              trailing: IconButton(
                onPressed: () {
                  section.deleteSection(section.allSections[index]);
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
