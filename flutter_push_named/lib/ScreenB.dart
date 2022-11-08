import 'package:flutter/material.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({super.key});

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {

	@override
  void initState() {
    // TODO: implement initState
    super.initState();
		print('initState is called');
  }

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
		print('dispose is called');
  }

  @override
  Widget build(BuildContext context) {
		print('build is called');
    return Scaffold(
			appBar: AppBar(
				title: Text('ScreenB'),
			),
			body: Center(
				child: ElevatedButton(
					child: Text('Go to Screen A'),
					onPressed: () {
						Navigator.pop(context);
					},
					style: ElevatedButton.styleFrom(
						backgroundColor: Colors.redAccent
					),
				)
			)
		);
  }
}