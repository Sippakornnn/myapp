import 'dart:math';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController firstNum = TextEditingController();
  TextEditingController secondNum = TextEditingController();
  String? result;

  void calculateNum(String option) {
    setState(() {
      String? firstTxt = firstNum.text.trim();
      String? secondTxt = secondNum.text.trim();

      if (firstTxt.isEmpty || secondTxt.isEmpty) {
        result = 'Please input both numbers';
        return;
      }

      int? num1 = int.tryParse(firstTxt);
      int? num2 = int.tryParse(secondTxt);

      if (num1 == null || num2 == null) {
        result = 'Please input only numbers';
        return;
      }

      if (option == '1') {
        result = 'Result = ${(num1 + num2).toString()}';
      } else {
        result = 'Result = ${pow(num1, num2).toString()}';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(hintText: 'Number 1'),
              controller: firstNum,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(hintText: 'Number 2'),
              controller: secondNum,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 250, 193, 119),
              foregroundColor: Colors.white,
            ),
            onPressed: () => calculateNum('1'),
            child: Text("Sum"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            onPressed: () => calculateNum('2'),
            child: Text("Power"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              firstNum.clear();
              secondNum.clear();
              setState(() {
                result = null;
              });
            },
            child: Text("Clear"),
          ),
          SizedBox(height: 10),
          if (result != null && result!.isNotEmpty)
            Text(
              result!,
              style: const TextStyle(fontSize: 16, color: Colors.red),
            ),
        ],
      ),
    );
  }
}
