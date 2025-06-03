import 'package:flutter/material.dart';

void main() {
  runApp(MyStackPositionedDemo());
}

class MyStackPositionedDemo extends StatelessWidget {
  const MyStackPositionedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack & Positioned'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Stack(
            // Stack Properties
            alignment: Alignment.center, // Align non-positioned children
            clipBehavior: Clip.hardEdge, // Clip content beyond bounds
            fit: StackFit.loose, // Children can have any size

            children: [


              Container(
                width: 300,
                height: 300,
                color: Colors.blue[100],
                child: Center(
                  child: Text(
                    'Base Container',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // Positioned on top-left
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                  child: Center(child: Text('Top-Left', style: TextStyle(color: Colors.white))),
                ),
              ),

              // Positioned on top-right
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                  child: Center(child: Text('Top-Right', style: TextStyle(color: Colors.white))),
                ),
              ),

              // Positioned on bottom-left
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.orange,
                  child: Center(child: Text('Bottom-Left', style: TextStyle(color: Colors.white))),
                ),
              ),

              // Positioned on bottom-right
              Positioned(
                bottom: 20,
                right: 20,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.purple,
                  child: Center(child: Text('Bottom-Right', style: TextStyle(color: Colors.white))),
                ),
              ),

              // Positioned in center using top, left, width
              Positioned(
                top: 120,
                left: 100,
                width: 100,
                height: 50,
                child: Container(
                  color: Colors.teal,
                  child: Center(child: Text('Center', style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
