import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			title: 'column_row',
			theme: ThemeData(
				
			),
			home: MyPage()
		);
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Colors.teal,
			body: SafeArea(
				child: Row(
					crossAxisAlignment: CrossAxisAlignment.stretch,
					children: [
						Container(
							height: 100,
							color: Colors.white,
							child: Text('Container 1'),
						),
						SizedBox(
							width: 30.0
						),
						Container(
							height: 100,
							color: Colors.blue,
							child: Text('Container 2')
						),
						Container(
							height: 100,
							color: Colors.red,
							child: Text('Container 3')
						),
					],
				),
			)
		);
  }
}