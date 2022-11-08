import 'package:flutter/material.dart';

void	main() => runApp(MyApp());

class MyApp extends StatefulWidget {
	MyApp({super.key});
	@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
	int	counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			theme: ThemeData(
				primarySwatch: Colors.blue
			),
			home: Scaffold(
				appBar: AppBar(),
				body: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Text('You have pushed the button this many times:'),
							Text(
								'$counter',
								style: Theme.of(context).textTheme.headline4,
							),
							SizedBox(height: 20,),
							Row(
								mainAxisAlignment: MainAxisAlignment.center,
								children: [
									FloatingActionButton(
										child: Icon(Icons.add),
										onPressed: () {
											setState(() {
												counter++;
												print("$counter");
											});
										},
									),
									SizedBox(width: 20,),
									FloatingActionButton(
										child: Icon(Icons.remove),
										onPressed: () {
											setState(() {
												counter--;
												print("$counter");
											});
										},
									),
								],
							)
						],
						)
					),
					
					
			),
		);
  }
}