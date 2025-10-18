import 'package:flutter/material.dart';
import 'package:myapp/week08/fruit.dart';
import 'package:myapp/week08/page3.dart';

// ignore: must_be_immutable
class Page2 extends StatefulWidget {
  Fruit fruit;

  Page2({super.key, required this.fruit});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Center(
        child: Column(
          children: [
            Text('Name: ${widget.fruit.name}'),
            Text('Price: ${widget.fruit.price}'),
            Text('Origin Date: ${widget.fruit.date[0]}'),
            Text('Expiration Date: ${widget.fruit.date[1]}'),
            Text('Country: ${widget.fruit.country}'),
            Text('Username: $username'),
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            FilledButton(
              onPressed: () async {
                String result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
                setState(() {
                  username = result;
                });
              },
              style: FilledButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
