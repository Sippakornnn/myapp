import 'package:flutter/material.dart';
import 'dart:math';

class ListTest extends StatefulWidget {
  const ListTest({super.key});

  @override
  State<ListTest> createState() => _ListTestState();
}

class _ListTestState extends State<ListTest> {
  int click = 0;

  // 🔹 Example list
  final List<String> words = ["Apple", "Banana", "Cherry", "Mango", "Papaya"];
  String currentWord = "";

  void clickCount() {
    setState(() {
      click++;
      currentWord = words[Random().nextInt(words.length)];
    });
  }

  void resetGame() {
    setState(() {
      click = 0;
      currentWord = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Test")),
      body: SafeArea(
        child: Column(
          children: [
            Text('Click = $click', style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text(currentWord, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: clickCount,
                  label: Text('Click'),
                  icon: Icon(Icons.touch_app),
                  style: FilledButton.styleFrom(backgroundColor: Colors.lightGreen),
                ),
                SizedBox(width: 10),
                FilledButton.icon(
                  onPressed: resetGame,
                  label: Text('RESET', style: TextStyle(color: Colors.red)),
                  icon: Icon(Icons.refresh, color: Colors.black),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

