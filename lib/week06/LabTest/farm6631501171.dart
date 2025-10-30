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

  String result = "";
  String image = "";

  void randomItem() {
    setState(() {
      image = catalog[0] as String;
    });
  }

  void reset() {
    setState(() {
      image = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFU Farm', style: TextStyle(color: threeColors[2])),
        backgroundColor: threeColors[0],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: randomItem,
              style: FilledButton.styleFrom(
                backgroundColor: threeColors[0],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              child: Text(
                "Randomize 3 Items",
                style: TextStyle(color: threeColors[2]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/farm/carrot.png',
                  width: 70,
                  height: 70,
                ),
                Text('Carrot'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Image.asset(
                  'assets/images/farm/broccoli.png',
                  width: 70,
                  height: 70,
                ),
                Text('Broccoli'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Image.asset(
                  'assets/images/farm/corn.png',
                  width: 70,
                  height: 70,
                ),
                Text('Corn')
              ],
            ),
            Column(children: [Text('Press "Randomize to get items"')]),
          ],
        ),
      ),
    );
  }
}
