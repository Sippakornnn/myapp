import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListviewDemo extends StatefulWidget {
  const ListviewDemo({super.key});

  @override
  State<ListviewDemo> createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo> {
  List data = [
    {
      'image': 'apple.png',
      'fruit': 'Apple',
      'price': 10,
      'icon2': Icons.delete,
    },
    {
      'image': 'banana.png',
      'fruit': 'Banana',
      'price': 6,
      'icon2': Icons.delete,
    },
    {
      'image': 'orange.png',
      'fruit': 'Orange',
      'price': 4,
      'icon2': Icons.delete,
    },
    {'image': 'kiwi.png', 'fruit': 'Kiwi', 'price': 12, 'icon2': Icons.delete},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset('assets/images/${data[index]['image']}'),
              title: Text(data[index]['fruit']),
              subtitle: Text('Price: ${data[index]['price']}'),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    data.removeAt(index);
                  });
                },
                icon: Icon(Icons.delete),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You tapped on ${data[index]['fruit']}'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
