import 'package:flutter/material.dart';
import 'package:flutter_push_named/ScreenA.dart';
import 'package:flutter_push_named/ScreenB.dart';
import 'package:flutter_push_named/ScreenC.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			initialRoute: '/',
			routes: {
				'/' : (context) => ScreenA(),
				'/b' : (context) => ScreenB(),
				'/c' : (context) => ScreenC()
			},
		);
  }
}