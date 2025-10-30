import 'package:flutter/material.dart';
import 'package:myapp/week09/drawer_widget.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Demo')),
      drawer: DrawerWidget(),
      body: Align(alignment: Alignment.topCenter, child: Text('First page')),
    );
  }
}
