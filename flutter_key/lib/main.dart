import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Key",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyKey(),
    );
  }
}

class MyKey extends StatelessWidget {
  final counterKey = GlobalKey<_CounterState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global key'),
      ),
      body: Center(
        child: Counter(
          key: counterKey,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          counterKey.currentState!.increment();
          print(counterKey.currentState!.count);
        },
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Count number: $count',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
