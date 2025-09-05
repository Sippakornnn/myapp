import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  const InputDemo({super.key});

  @override
  State<InputDemo> createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  // state variables
  String message = '';
  TextEditingController tcName = TextEditingController();

  //function
  void updateText() {
    setState(() {
      message = tcName.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Demo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
                suffixIcon: IconButton(
                  onPressed: tcName.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
              controller: tcName,
            ),
          ),
          ElevatedButton(onPressed: updateText, child: Text('OK')),
          SizedBox(height: 20),
          Text(message),
        ],
      ),
    );
  }
}
