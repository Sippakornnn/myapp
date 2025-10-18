import 'package:flutter/material.dart';
import 'package:myapp/week08/page1.dart';

// ignore: must_be_immutable
class Page3 extends StatelessWidget {
  Page3({super.key});
  TextEditingController tc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 3')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: tc,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Your Name'),
              ),
            ),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context, tc.text);
            },
            child: Text('OK'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
                (route) => false,
              );
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
