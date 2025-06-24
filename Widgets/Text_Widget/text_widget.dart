import 'package:flutter/material.dart';

void main() {
  runApp(MyTextDemoApp());
}

class MyTextDemoApp extends StatelessWidget {
  const MyTextDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Text Widget Properties")),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Container(
              color: Colors.grey[100],
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Flutter is Google’s UI toolkit for building beautiful, '
                    'natively compiled applications for mobile, web, and desktop '
                    'from a single codebase.',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                //softWrap: true,
                textAlign: TextAlign.justify,
                //textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'serif',
                  color: Colors.indigo,
                 // backgroundColor: Colors.yellowAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  wordSpacing: 1.0,
                  fontStyle: FontStyle.italic,
                  //decoration: TextDecoration.underline,
                  //decorationColor: Colors.red,
                  decorationThickness: 2.5,
                  //decorationStyle: TextDecorationStyle.wavy,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      offset: Offset(3, 3),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
