import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  Widget createDrawer() {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(decoration: BoxDecoration(color: Colors.blue), child: Row(
            children: [
              Image.asset('assets/images/batman.png', width: 100,),
              SizedBox(width: 16,),
              Text('Header', style: TextStyle(color: Colors.white, fontSize: 24),)
            ],
          ))
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Demo'),),
      drawer: createDrawer(),
      body: Align(
        alignment:  Alignment.topCenter,
        child: Text('First page'),
      ),
    );
  }
}