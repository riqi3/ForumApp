import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextStyle s = TextStyle(fontSize:40);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('data', style: s,),
          Text('asdad',style: s,),
        ],
      ),
    );
  }
}