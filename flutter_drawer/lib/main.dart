import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Appbar',
			theme: ThemeData(
				primarySwatch: Colors.red
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
			appBar: AppBar(
				title: Text('Appbar icon menu'),
				centerTitle: true,
				elevation: 0.0,
				actions: [
					IconButton(
					icon: Icon(Icons.shopping_cart),
					onPressed: () {
						print('Shopping cart button is clicked');
					 }
					),
					IconButton(
					icon: Icon(Icons.search),
					onPressed: () {
						print('Search button is clicked');
					 }
					)
				],
			),
			drawer: Drawer(
				child: ListView(
					padding: EdgeInsets.zero,
					children: [
						UserAccountsDrawerHeader(
							currentAccountPicture: CircleAvatar(
								backgroundImage: AssetImage('assets/dltkdgns.jpeg'),
								backgroundColor: Colors.white,
							),
							otherAccountsPictures: [
								CircleAvatar(
									backgroundImage: AssetImage('assets/dlwldms.jpeg'),
									backgroundColor: Colors.white,
								),
								// CircleAvatar(
								// 	backgroundImage: AssetImage('assets/dlwldms.jpeg'),
								// 	backgroundColor: Colors.white,
								// )
							],
							accountName: Text('dltkdgns00'),
							accountEmail: Text('admin@dltkdgns00.tk'),
							onDetailsPressed: (){
								print('arrow is clicked');
							},
							decoration: BoxDecoration(
								color: Colors.red[200],
								borderRadius: BorderRadius.only(
									bottomLeft: Radius.circular(30.0),
									bottomRight: Radius.circular(30.0)
								)
							),
						),
						ListTile(
							leading: Icon(
								Icons.home,
								color: Colors.grey[850]
								),
							title: Text('Home'),
							onTap: (){
								print('Home is tapped');
							},
							trailing: Icon(Icons.add),
						),
						ListTile(
							leading: Icon(
								Icons.settings,
								color: Colors.grey[850]
								),
							title: Text('Setting'),
							onTap: (){
								print('Setting is tapped');
							},
							trailing: Icon(Icons.add),
						),
						ListTile(
							leading: Icon(
								Icons.question_answer,
								color: Colors.grey[850]
								),
							title: Text('Q&A'),
							onTap: (){
								print('Q&A is tapped');
							},
							trailing: Icon(Icons.add),
						),
					],
				),
			),
		);
	}
}