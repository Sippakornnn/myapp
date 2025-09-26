//6631501171
import 'package:flutter/material.dart';

class Farm extends StatefulWidget {
  const Farm({super.key});

  @override
  State<Farm> createState() => _FarmState();
}

class _FarmState extends State<Farm> {
  final List<Color> threeColors = const [
    Color(0xFFBCDDDC),
    Color(0xFFFFEDD1),
    Color.fromARGB(255, 147, 29, 3),
  ];

  final List<Map<String, dynamic>> catalog = [
    {'name': 'Carrot', 'price': 20, 'image': 'assets/images/farm/carrot.png'},
    {'name': 'Corn', 'price': 39, 'image': 'assets/images/farm/corn.png'},
    {'name': 'Tomato', 'price': 46, 'image': 'assets/images/farm/tomato.png'},
    {
      'name': 'Broccoli',
      'price': 98,
      'image': 'assets/images/farm/broccoli.png',
    },
    {
      'name': 'Pumpkin',
      'price': 150,
      'image': 'assets/images/farm/pumpkin.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
