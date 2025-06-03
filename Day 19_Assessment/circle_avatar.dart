import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyCircleAvatarApp());
}
class MyCircleAvatarApp extends StatelessWidget {
  const MyCircleAvatarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Circle Avatar Demo")),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: CircleAvatar(
            radius: 90,
            backgroundColor: Colors.teal[100],
            child: CircleAvatar(
              radius: 80,
              // 1. it can be a text
              //child: Text("Archana",style: TextStyle(fontSize: 23),),
            
              // 2. it can be a background image
              backgroundImage: AssetImage('assets/images/archana.jpg'),
              backgroundColor: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
