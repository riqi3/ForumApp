import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_forum/provider/ForumTopicProvider.dart';
 
import 'package:provider/provider.dart';

import '../widgets/TopicWidget.dart';
 
class TopicScreen extends StatefulWidget {
  const TopicScreen({super.key});

  @override
  State<TopicScreen> createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
 

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text('TOPIC'),
      ),
      body: TopicWidget(),
      backgroundColor: Colors.amber,
      floatingActionButton: FloatingActionButton(
        onPressed: ()   {
          Navigator.of(context).pushNamed(
                '/newTopics',
              );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
