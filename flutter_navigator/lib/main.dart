import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			title: 'Navigator',
			home: FirstPage(),
		);
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
			appBar: AppBar(
				title: Text('First page'),
			),
			body: Center(
				child: ElevatedButton(
					child: Text('Go to the Second page'),
					onPressed: () {
						Navigator.push(context2, MaterialPageRoute(builder: (_) => SecondPage()
						));
					},
					)
			)
		);
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
			appBar: AppBar(
				title: Text('Second page'),
			),
			body: Center(
				child: ElevatedButton(
					child: Text('Go to the First page'),
					onPressed: () {
						Navigator.pop(ctx);
					},
					)
			)
		);
  }
}