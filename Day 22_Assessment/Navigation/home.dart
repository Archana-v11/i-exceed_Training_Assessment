import 'package:flutter/material.dart';

import 'package:project1/Navigation/second_page.dart';
void main() {
  runApp(MyAppp());
}

// ✅ Don't put Scaffold directly in home
class MyAppp extends StatelessWidget {
  const MyAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogin(), //
    );
  }
}

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
        backgroundColor: Colors.tealAccent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MySecondPage()),
            );
          },
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}

