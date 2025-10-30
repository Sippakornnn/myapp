import 'package:flutter/material.dart';
import 'dart:async';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  double count = 1.00;
  Timer? timer;

  void countdownTime() {
    timer = Timer.periodic(Duration(milliseconds: 10), (Timer timer) {
      setState(() {
        count = (count - 0.01).clamp(0.0, 1.0);
        if (count <= 0) {
          count = 0.00;
          timer.cancel();
        }
      });
    });
  }

  void resetCount() {
    timer?.cancel();
    setState(() {
      count = 1.00;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                count.toStringAsFixed(2),
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: countdownTime,
                  label: Text('Start'),
                  icon: Icon(Icons.play_circle_fill_rounded),
                ),
                SizedBox(width: 8),
                FilledButton.icon(
                  onPressed: resetCount,
                  label: Text('Reset'),
                  icon: Icon(Icons.restart_alt),
                  style: FilledButton.styleFrom(backgroundColor: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
