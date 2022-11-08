import 'package:flutter/material.dart';

void	main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			title: "Sign In",
			theme: ThemeData(primarySwatch: Colors.grey),
			home: LogIn(),
		);
  }
}

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				backgroundColor: Colors.blue,
				title: Text(
					'Sign In',
					style: TextStyle(color: Colors.white),
				),
				centerTitle: true,
				elevation: 0.2,
			),
			body: Padding(
				padding: EdgeInsets.all(16.0),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						ButtonTheme(
							height: 50.0,
							child: ElevatedButton(
								child: Row(
									mainAxisAlignment: MainAxisAlignment.spaceEvenly,
									children: [
										Image.asset('images/glogo.png'),
										Text(
											'Login with Google',
											style: TextStyle(color: Colors.black87, fontSize: 15.0),
										),
										Opacity(
											opacity: 0.0,
											child: Image.asset('images/glogo.png'),
										)
									]
								),
								onPressed: (){},
								style: ElevatedButton.styleFrom(
									backgroundColor: Colors.white,
								),
							),
							shape: RoundedRectangleBorder(
								borderRadius: BorderRadius.all(
									Radius.circular(4.0),
								)
							),
						),
						SizedBox(
							height: 10.0,
						),
						ButtonTheme(
							height: 50.0,
							child: ElevatedButton(
								child: Row(
									mainAxisAlignment: MainAxisAlignment.spaceEvenly,
									children: [
										Image.asset('images/flogo.png'),
										Text(
											'Login with Facebook',
											style: TextStyle(color: Colors.white, fontSize: 15.0),
										),
										Opacity(
											opacity: 0.0,
											child: Image.asset('images/flogo.png'),
										)
									]
								),
								onPressed: (){},
								style: ElevatedButton.styleFrom(
									backgroundColor: Color(0xFF334D92),
								),
							),
							shape: RoundedRectangleBorder(
								borderRadius: BorderRadius.all(
									Radius.circular(4.0),
								)
							),
						),
						SizedBox(
							height: 10.0,
						),
						ButtonTheme(
							height: 50.0,
							child: ElevatedButton(
								child: Row(
									mainAxisAlignment: MainAxisAlignment.spaceEvenly,
									children: [
										Icon(Icons.mail),
										Text(
											'Login with Email',
											style: TextStyle(color: Colors.white, fontSize: 15.0),
										),
										Opacity(
											opacity: 0.0,
											child: Image.asset('images/glogo.png'),
										)
									]
								),
								onPressed: (){},
								style: ElevatedButton.styleFrom(
									backgroundColor: Colors.green,
									foregroundColor: Colors.white
								),
							),
							shape: RoundedRectangleBorder(
								borderRadius: BorderRadius.all(
									Radius.circular(4.0),
								)
							),
						),
					]
				)
			),
		);
	}
}