import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        width: 200,
        height: 200,
        child: Image.asset('assets/images/sky.jpg', fit: BoxFit.cover,),
      ),
    );
  }
}
