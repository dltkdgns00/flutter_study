import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp (
			debugShowCheckedModeBanner: false,
			title: 'Status',
			home: Grade(),
		);
	}
}

class Grade extends StatelessWidget {
	const Grade({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold (
			backgroundColor: Colors.amber[800],
			appBar: AppBar (
				title: Text('MapleStory'),
				backgroundColor: Colors.amber[700],
				centerTitle: true,
				elevation: 0.0
			),
			body: Padding (
				padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
				child: Column (
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget> [
						Center (
							child: CircleAvatar (
								backgroundImage: AssetImage('assets/lLovePoem.png'),
								backgroundColor: Colors.white,
								radius: 100.0,
							),
						),
						Divider (
							height: 60.0,
							color: Colors.grey[850],
							thickness: 0.5,
							endIndent: 30.0,
						),
						Text (
							'바이퍼',
							style: TextStyle (
								color: Colors.white,
								letterSpacing: 2.0,
							)
						),
						SizedBox (
							height: 10.0,
						),
						Text (
							'lLovePoem',
							style: TextStyle (
								color: Colors.white,
								letterSpacing: 2.0,
								fontSize: 28.0,
								fontWeight: FontWeight.bold
							),
						),
						SizedBox(
							height: 30.0,
						),
						Text (
							'LEVEL',
							style: TextStyle (
								color: Colors.white,
								letterSpacing: 2.0,
							)
						),
						SizedBox (
							height: 10.0,
						),
						Text (
							'228',
							style: TextStyle (
								color: Colors.white,
								letterSpacing: 2.0,
								fontSize: 28.0,
								fontWeight: FontWeight.bold
							),
						),
						SizedBox(
							height: 30.0,
						),
						Row (
							children: <Widget> [
								Icon(Icons.check_circle_outline),
								SizedBox(
									width: 10.0,
								),
								Text('서펜트 스크류',
								style: TextStyle(
									fontSize: 16.0,
									letterSpacing: 1.0
								),
								),
							],
						),
						Row (
							children: <Widget> [
								Icon(Icons.check_circle_outline),
								SizedBox(
									width: 10.0,
								),
								Text('라이트닝 폼',
								style: TextStyle(
									fontSize: 16.0,
									letterSpacing: 1.0
								),
								),
							],
						),
						Row (
							children: <Widget> [
								Icon(Icons.check_circle_outline),
								SizedBox(
									width: 10.0,
								),
								Text('하울링 피스트',
								style: TextStyle(
									fontSize: 16.0,
									letterSpacing: 1.0
								),
								),
							],
						),
						Center (
							child: CircleAvatar (
								backgroundImage: AssetImage('assets/howlingfist.gif'),
								radius: 50.0,
							),
						)
					]
				),
			)
		);
  }
}