import 'package:flutter/material.dart';

void main() {
  runApp(MySnackBarApp());
}

class MySnackBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaffoldMessengerExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScaffoldMessengerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScaffoldMessenger Demo"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show a simple SnackBar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Hello! This is a SnackBar."),
                
              ),
            );
          },
          child: Text("Show SnackBar"),
        ),
      ),
    );
  }
}
