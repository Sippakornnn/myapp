import 'package:flutter/material.dart';
import 'dart:math';

class ImageTest extends StatefulWidget {
  const ImageTest({super.key});

  @override
  State<ImageTest> createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
    int click = 0;

  // 🔹 Example list of images
  final List<String> images = [
    "assets/images/baking.jpg",
    "assets/images/clock-tower.jpg",
    "assets/images/landscape.png",
    "assets/images/salad.jpg",
    "assets/images/sky.jpg"
  ];

  String currentImage = "";

  void clickCount() {
    setState(() {
      click++;
      currentImage = images[Random().nextInt(images.length)];
    });
  }

  void resetGame() {
    setState(() {
      click = 0;
      currentImage = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Test")),
      body: SafeArea(
        child: Column(
          children: [
            Text('Click = $click', style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            
            // Display image if currentImage is not empty
            if (currentImage.isNotEmpty)
              Image.asset(currentImage, height: 250),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: clickCount,
                  label: Text('Click'),
                  icon: Icon(Icons.touch_app),
                  style: FilledButton.styleFrom(backgroundColor: Colors.lightGreen),
                ),
                SizedBox(width: 10),
                FilledButton.icon(
                  onPressed: resetGame,
                  label: Text('RESET', style: TextStyle(color: Colors.red)),
                  icon: Icon(Icons.refresh, color: Colors.black),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}