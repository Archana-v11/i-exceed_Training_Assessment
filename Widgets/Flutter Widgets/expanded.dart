import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyExpandedApp());
}
class MyExpandedApp extends StatelessWidget {
  const MyExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        title: Center(child: Text("Expanded Demo")),
        backgroundColor: Colors.lightBlueAccent,
      ),
        body: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.pinkAccent,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.lime,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}
