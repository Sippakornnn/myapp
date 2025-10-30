import 'package:flutter/material.dart';
import 'dart:math';

class NumGuess extends StatefulWidget {
  const NumGuess({super.key});

  @override
  State<NumGuess> createState() => _NumGuessState();
}

class _NumGuessState extends State<NumGuess> {
  String result = '';
  int chance = 3;
  int random = Random().nextInt(10);

  TextEditingController tcNum = TextEditingController();

  void guessResult() {
    int? guess = int.tryParse(tcNum.text);

    if (guess == null) {
      setState(() {
        result = 'Incorrect input';
      });
      return;
    }

    setState(() {
      chance--;
      if (guess == random) {
        result = 'Correct, you win!';
      } else if (chance <= 0) {
        result = 'Sorry, you lose. The answer is $random';
      } else if (guess < random) {
        result = '$guess is too small, $chance chance(s) left!';
      } else {
        result = '$guess is too large, $chance chance(s) left!';
      }
    });
  }

  void resetGame() {
    setState(() {
      random = Random().nextInt(10);
      chance = 3;
      result = '';
      tcNum.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Guess a number game")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcNum,
              decoration: InputDecoration(hintText: "Guess a number 0-9"),
            ),
          ),
          Text(result, style: TextStyle(fontSize: 20, color: Colors.red)),

          if (chance > 0 && result != 'Correct, you win!')
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide(color: Colors.black, width: 1),
              ),
              onPressed: guessResult,
              child: Text(
                'Guess',
                style: TextStyle(color: Colors.deepPurpleAccent),
              ),
            )
          else
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide(color: Colors.black, width: 1),
              ),
              onPressed: resetGame,
              child: Text(
                'Replay',
                style: TextStyle(color: Colors.deepPurpleAccent),
              ),
            ),
        ],
      ),
    );
  }
}
