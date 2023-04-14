import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const ForumApp());
}

class ForumApp extends StatelessWidget {
  const ForumApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FORUM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const home(),
    );
  }
}
