import 'package:flutter/material.dart';
import 'package:project_forum/provider/ForumTopicProvider.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'provider/ForumSectionProvider.dart';
import 'screens/LoginScreen.dart';
import 'screens/TopicScreen.dart';
import 'widgets/NewSectionWidget.dart';
import 'widgets/NewTopicWidget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SectionProvider(),
          child: ForumApp(),
        ),
        ChangeNotifierProvider(
          create: (_) => TopicProvider(),
          child: ForumApp(),
        ),
      ],
      child: ForumApp(),
    ),
  );
}

// const ForumApp()

class ForumApp extends StatelessWidget {
  const ForumApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => SectionProvider()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FORUM',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/home': (context)=> HomeScreen(),
          '/newSection': (context) => NewSectionWidget(),
          '/newTopics': (context) => NewTopicWidget(),
        },
      ),
    );
  }
}
