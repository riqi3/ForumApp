import 'package:flutter/material.dart';
import 'package:project_forum/model/ForumSectionModel.dart';
import 'package:project_forum/provider/ForumSectionProvider.dart';
import 'package:project_forum/screens/LoginScreen.dart';
import 'package:project_forum/screens/NewForum.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'widgets/NewForumWidget.dart';

void main() {
  runApp(const ForumApp());
}

class ForumApp extends StatelessWidget {
  const ForumApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => ForumProvider()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FORUM',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
        routes: {
          '/new': (context) => const NewForumWidget(),
        },
      ),
    );
  }
}
