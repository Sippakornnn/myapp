import 'package:flutter/material.dart';

class Cooking extends StatelessWidget {
  const Cooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cooking Recipes', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Papaya Salad',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurple, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit',
                          softWrap: true,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200, // Fixed width for image
                        height: 150, // Fixed height for image
                        child: Image.asset(
                          'assets/images/salad.jpg',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[300],
                              child: Icon(
                                Icons.fastfood,
                                color: Colors.grey[600],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.black),
                        ],
                      ),
                      Text('3128 reviews'),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.schedule, color: Colors.brown),
                              Text(
                                'PREP:',
                                style: TextStyle(color: Colors.brown),
                              ),
                              Text(
                                '5 mins',
                                style: TextStyle(color: Colors.brown),
                              ),
                            ],
                          ),
                          SizedBox(width: 16),
                          Column(
                            children: [
                              Icon(Icons.timer_outlined, color: Colors.red),
                              Text(
                                'COOK:',
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                '10 mins',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 16),
                          Column(
                            children: [
                              Icon(Icons.dining),
                              Text('FEEDS: '),
                              Text('1-3'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}