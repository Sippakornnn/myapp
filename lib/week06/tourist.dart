import 'package:flutter/material.dart';

class Tourist extends StatelessWidget {
  const Tourist({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tourist Place', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromRGBO(54, 97, 142, 1),
        ),
        body: Column(
          children: [
            Image.asset('assets/images/clock-tower.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chiang Rai Clock Tower',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Chiang Rai, Thailand',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.star, color: Colors.red),
                  Text('559'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.call, color: Colors.lightBlue, size: 30),
                      Text('CALL', style: TextStyle(color: Colors.lightBlue)),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Icon(Icons.directions, color: Colors.lightBlue, size: 30),
                      Text('ROUTE', style: TextStyle(color: Colors.lightBlue)),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Icon(Icons.share, color: Colors.lightBlue, size: 30),
                      Text('SHARE', style: TextStyle(color: Colors.lightBlue)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit. Ex sapien vitae pellentesque sem placerat in id. Pretium tellus duis convallis tempus leo eu aenean. Urna tempor pulvinar vivamus fringilla lacus nec metus. Iaculis massa nisl malesuada lacinia integer nunc posuere. Semper vel class aptent taciti sociosqu ad litora. Conubia nostra inceptos himenaeos orci varius natoque penatibus. Dis parturient montes nascetur ridiculus mus donec rhoncus. Nulla molestie mattis scelerisque maximus eget fermentum odio. Purus est efficitur laoreet mauris pharetra vestibulum fusce.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
