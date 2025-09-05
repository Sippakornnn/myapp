import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App', style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 255, 0, 255),
        ),
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 255, 0, 255),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Color.fromARGB(255, 255, 0, 255),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    ),
  );
}
