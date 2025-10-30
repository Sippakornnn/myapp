import 'package:flutter/material.dart';

class DesignHW extends StatelessWidget {
  const DesignHW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 143, 177),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Wedding Organizer',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Sevillana",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Pre-wedding, Photo, Party',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Sevillana",
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text('Our Service', style: TextStyle(color: Colors.white)),
              ),
              Spacer(),
              Text(
                '345 Moo 1 Tasud  Chiang Rai, Thailand',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
