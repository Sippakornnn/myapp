import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = '';
  TextEditingController tcFirst = TextEditingController();
  TextEditingController tcSecond = TextEditingController();

  void calculateNum() {
    int? first = int.tryParse(tcFirst.text);
    int? second = int.tryParse(tcSecond.text);

    if (first == null || second == null) {
      setState(() {
        result = 'Incorrect input';
      });
    } else {
      int value = first + second;
      setState(() {
        result = 'Result = $value';
      });
    }
  }

  void clearInput() {
    setState(() {
      tcFirst.clear();
      tcSecond.clear();
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: "First Number"),
                      controller: tcFirst,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add, size: 20),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: "Second Number"),
                      controller: tcSecond,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: calculateNum,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text(
                      'Calculate',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: clearInput,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text('Clear', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(result, style: TextStyle(color: Colors.red, fontSize: 15),),
            ],
          ),
        ),
      ),
    );
  }
}
