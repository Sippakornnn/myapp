import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String message = '';
  TextEditingController tcName = TextEditingController();
  TextEditingController tcPass = TextEditingController();

  void checkLogin() {
    setState(() {
      if (tcName.text != 'admin' || tcPass.text != '1234') {
        message = 'Wrong username or password';
      } else {
        message = 'Welcome admin';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(hintText: 'Username'),
              controller: tcName,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(hintText: 'Password'),
              controller: tcPass,
              obscureText: true,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            onPressed: checkLogin,
            child: Text("Login"),
          ),
          SizedBox(height: 10),
          Text(message, style: TextStyle(fontSize: 16, color: Colors.red)),
        ],
      ),
    );
  }
}
