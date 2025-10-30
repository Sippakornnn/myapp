import 'package:flutter/material.dart';
import 'dart:async';

class ClickGame extends StatefulWidget {
  const ClickGame({super.key});

  @override
  State<ClickGame> createState() => _ClickGameState();
}

class _ClickGameState extends State<ClickGame> {
  double count = 1.00;
  int click = 0;
  bool play = false;
  Timer? timer;

  void startPlay() {
    setState(() {
      count = 1.00;
      click = 0;
      play = true;
    });

    timer?.cancel();
    timer = Timer.periodic(const Duration(milliseconds: 10), (Timer t) {
      setState(() {
        count = (count - 0.01).clamp(0.0, 1.0);
        if (count <= 0) {
          play = false;
          t.cancel();
        }
      });
    });
  }

  void clickCount() {
    setState(() {
      if (play == true && count > 0) {
        click++;
      }
    });
  }

  void resetGame() {
    setState(() {
      timer?.cancel();
      count = 1.00;
      click = 0;
      play = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Center(
                  child: Text(
                    count.toStringAsFixed(2),
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
                Text('Click = $click', style: TextStyle(fontSize: 30)),
              ],
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
                FilledButton.icon(
                  onPressed: !play ? startPlay : resetGame,
                  label: Text('PLAY', style: TextStyle(color: Colors.red)),
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
