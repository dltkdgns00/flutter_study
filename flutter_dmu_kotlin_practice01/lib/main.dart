import 'package:flutter/material.dart';
import 'sub.dart';

void main()
{
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			title: '2022-11-03',
			home: MainPage(),
		);
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				title: Text('2022-11-03'),
				centerTitle: true,
			),
			body: Column(
							children:[ Center(
								child: Text('메인 화면',
								textScaleFactor: 5,)
								),
								ElevatedButton(onPressed: (){
									Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SubPage()));
								},
								child: Text('서브로 가기'))
								]
						),
		);
  }
}