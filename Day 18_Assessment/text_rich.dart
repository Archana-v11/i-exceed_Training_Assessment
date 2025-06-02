import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyRichTextApp());
}

class MyRichTextApp extends StatelessWidget {
  const MyRichTextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text.rich Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Text.rich Demo')),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              text: "Welcome to \n",
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'serif'
              ),
              children: [
                TextSpan(
                  text: "i-exceed\n\n",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.purpleAccent,
                      fontFamily: 'serif'
                  ),
                ),

                TextSpan(
                  text: "Click Here!!!",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'serif'
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap=(){
                    print("Click here is clicked");
                    }
                )
              ]
            ),

          ),
        ),
      ),
    );
  }
}
