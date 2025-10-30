import 'package:flutter/material.dart';

const Color bgColor = Color(0xFF202020);
const Color primaryColor = Color(0xFFFFBD73);

class SigninApp extends StatelessWidget {
  const SigninApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(
            top: -100,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(
                "assets/images/baking.jpg",
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 300),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: bgColor),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 24.0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Sign in".toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Sign up".toUpperCase(),
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Icon(Icons.alternate_email, color: primaryColor),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Icon(Icons.lock_open, color: primaryColor),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          FilledButton.icon(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: CircleBorder(
                                side: BorderSide(color: Colors.grey.shade700),
                              ),
                            ),
                            label: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/15429/15429792.png',
                              width: 24,
                              height: 24,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          FilledButton.icon(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: CircleBorder(
                                side: BorderSide(color: Colors.grey.shade700),
                              ),
                            ),
                            label: Icon(
                              Icons.chat,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Spacer(),
                          FilledButton.icon(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: CircleBorder(),
                            ),
                            label: Icon(Icons.arrow_forward, color: bgColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
