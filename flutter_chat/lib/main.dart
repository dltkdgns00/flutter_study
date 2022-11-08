import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chatting app',
        theme: ThemeData(primaryColor: Colors.blue),
        home: LoginSignupScreen());
  }
}
