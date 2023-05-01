import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_forum/provider/ForumTopicProvider.dart';
 
import 'package:provider/provider.dart';

import 'widgets/SectionWidget.dart';
import 'widgets/TopicWidget.dart';

 

 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _textFieldController = TextEditingController();
  // String newTopic = '';
  // String newDescription = '';

  // @override
  // void initState() {
  //   super.initState();
  //   _textFieldController.addListener(() {
  //     newTopic = _textFieldController.text;
  //   });
  //   _textFieldController.addListener(() {
  //     newDescription = _textFieldController.text;
  //   });
  // }

  // @override
  // void dispose() {
  //   _textFieldController.dispose();
  //   super.dispose();
  // }

  // @override
  // void _submit() {
  //   Provider.of<ForumProvider>(context, listen: false).add(forumTopic);
  //   Navigator.pop(context);
  //   _textFieldController.clear();
  // }

  @override
  Widget build(BuildContext context) {
    // Future<void> _showAddTextDialog() async {
    //   return showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         title: const Text('Any topics in mind?'),
    //         content: TextField(
    //           autofocus: true,
    //           controller: _textFieldController,
    //           decoration: const InputDecoration(
    //             hintText: 'What would you like to share?',
    //           ),
    //           onSubmitted: (_) => _submit(),
    //         ),
    //         actions: [
    //           ElevatedButton(
    //             onPressed: _submit,
    //             child: const Text(
    //               'Submit',
    //             ),
    //             style: ElevatedButton.styleFrom(
    //               minimumSize: const Size(120, 40),
    //             ),
    //           ),
    //           ElevatedButton(
    //             onPressed: (){
    //                       Navigator.of(context).pop();
    //                     },
    //             child: const Text(
    //               'Cancel',
    //             ),
    //             style: ElevatedButton.styleFrom(
    //               minimumSize: const Size(120, 40),
    //             ),
    //           ),
    //         ],
    //         shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(16),
    //  ),
    //  actionsAlignment: MainAxisAlignment.center,
    //       );
    //     },
    //   );
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text('forum'),
      ),
      body: SectionWidget(),
      backgroundColor: Colors.amber,
      floatingActionButton: FloatingActionButton(
        onPressed: ()   {
          Navigator.of(context).pushNamed(
                '/newSection',
              );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
