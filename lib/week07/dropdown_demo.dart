import 'package:flutter/material.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({super.key});

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  int ddValue = 0;
  List fruits = ['Apple', 'Banana', 'Orange', 'Papaya'];

  void updateDropdown(int? value) {
    setState(() {
      ddValue = value!;
    });
  }

  List<DropdownMenuItem<int>> createDropdown() {
    return List.generate(
      fruits.length,
      (index) => DropdownMenuItem(value: index, child: Text(fruits[index])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              value: ddValue,
              items: createDropdown(),
              onChanged: updateDropdown,
            ),
            Text('You choose: $ddValue'),
          ],
        ),
      ),
    );
  }
}
