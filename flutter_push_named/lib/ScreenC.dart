import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				title: Text('ScreenC'),
			),
			body: Center(
				child: Text('ScreenC',
					style: TextStyle(
						fontSize: 24.0
					)
				)),
		);
  }
}