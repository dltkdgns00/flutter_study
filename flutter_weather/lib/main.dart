import 'package:flutter/material.dart';
import 'package:flutter_weather/screens/loading.dart';

void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			title: 'Weather app',
			theme: ThemeData(
				primaryColor: Colors.blue,
			),
			home: Loading(),
		);
  }
}