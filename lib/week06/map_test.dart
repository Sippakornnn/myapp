import 'package:flutter/material.dart';
import 'dart:math';

class MapTest extends StatefulWidget {
  const MapTest({super.key});

  @override
  State<MapTest> createState() => _MapTestState();
}

class _MapTestState extends State<MapTest> {
  int click = 0;

  // 🔹 Example map (id → word)
  final Map<int, String> wordsMap = {
    1: "Lion",
    2: "Tiger",
    3: "Elephant",
    4: "Giraffe",
    5: "Zebra",
  };
  String currentWord = "";

  void clickCount() {
    setState(() {
      click++;
      int key = wordsMap.keys.elementAt(Random().nextInt(wordsMap.length));
      currentWord = wordsMap[key]!;
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
      appBar: AppBar(title: Text("Click Game - Map")),
      body: SafeArea(
        child: Column(
          children: [
            Text('Click = $click', style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text(
              currentWord,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: clickCount,
                  label: Text('Click'),
                  icon: Icon(Icons.touch_app),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
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
