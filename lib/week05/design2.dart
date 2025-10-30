import 'package:flutter/material.dart';

class Design2 extends StatelessWidget {
  const Design2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[300],
                backgroundImage: NetworkImage(
                  'https://tr.rbxcdn.com/30DAY-AvatarHeadshot-5D763D4EFF45A9CDAAE63E79FD959FA7-Png/150/150/AvatarHeadshot/Webp/noFilter',
                ),
              ),
            ),
            Divider(color: Colors.grey[600], height: 60),
            Text('Name', style: TextStyle(color: Colors.grey, fontSize: 16)),
            Text(
              'John Doe',
              style: TextStyle(color: Colors.yellow, fontSize: 22),
            ),
            SizedBox(height: 16),
            Text('Age', style: TextStyle(color: Colors.grey, fontSize: 16)),
            Text('22', style: TextStyle(color: Colors.yellow, fontSize: 22)),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey),
                SizedBox(width: 8),

                Text(
                  'john.doe@abc.com',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
