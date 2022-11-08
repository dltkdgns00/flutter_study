import 'package:flutter/material.dart';
import 'login_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			title: 'Firebase login app',
			home: LogIn(),
		);
  }
}