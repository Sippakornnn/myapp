import 'package:flutter/material.dart';
import 'package:myapp/week09/drawer_demo.dart';
import 'package:myapp/week09/drawer_demo2.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Row(
              children: [
                Image.asset('assets/images/batman.png', width: 100),
                SizedBox(width: 16),
                Text(
                  'Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DrawerDemo()),
              );
            },
            label: Text('Page 1'),
            icon: Icon(Icons.access_alarm),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DrawerDemo2()),
              );
            },
            label: Text('Page 2'),
            icon: Icon(Icons.access_alarm),
          ),
        ],
      ),
    );
  }
}
