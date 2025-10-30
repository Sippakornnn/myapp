import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // state variable
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 255, 0, 255),
      ),
      body: Center(
        child: Text(
          'Count = $count',
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
            count++;
          });
        },
        backgroundColor: Color.fromARGB(255, 255, 0, 255),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
