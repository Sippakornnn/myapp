import 'package:flutter/material.dart';
import 'package:myapp/week08/fruit.dart';
import 'package:myapp/week08/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Align(
        alignment: Alignment.topCenter,
        child: FilledButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page2(
                  fruit: Fruit('Apple', 15, ['10 Oct', '20 Oct'], 'Thailand'),
                ),
              ),
            );
          },
          child: Text('Next'),
        ),
      ),
    );
  }
}
