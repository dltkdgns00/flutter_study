import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			title: 'myapp',
			theme: ThemeData(
				primaryColor: Colors.blue
			),
			home: MyPage(),
		);
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Colors.blue,
			body: SafeArea(
							child: Container(
								color: Colors.red,
								width: 100,
								height: 100,
								margin: EdgeInsets.symmetric(
									vertical: 50,
									horizontal: 10
								),
								padding: EdgeInsets.all(40),
								child: Text('Hello'),
							),
						),
		);
  }
}