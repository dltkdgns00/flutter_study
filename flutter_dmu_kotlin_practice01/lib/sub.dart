import 'package:flutter/material.dart';
import 'main.dart';

class SubPage extends StatelessWidget {
  const SubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				title: Text('2022-11-03'),
				centerTitle: true,
			),
			body: Column(
							children:[ Center(
								child: Text('서브 화면',
								textScaleFactor: 5,)
								),
								ElevatedButton(onPressed: (){
									Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MainPage()));
								},
								child: Text('메인으로 가기'))
								]
						),
		);
  }
}