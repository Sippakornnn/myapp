import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // state variable
  String message = 'Hello friends';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 255, 0, 255),
      ),
      body: Center(
        child: Text(
          message,
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 255, 0, 255),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // debugPrint('test');
          setState(() {
            if (message == 'Hello friends') {
              message = 'Hello me';
            } else {
              message = 'Hello friends';
            }
          });
        },
        backgroundColor: Color.fromARGB(255, 255, 0, 255),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
