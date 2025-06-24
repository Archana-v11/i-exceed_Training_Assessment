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
        body: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal,
                      blurRadius: 6,
                      offset: Offset(2, 4),
                    )
                  ],
                ),
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
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(40),
              height: 200,
              color: Colors.yellowAccent,
              child: Row(
                children: [
                  Container(height: 100,width: 90,color: Colors.grey,),
                  Spacer(flex: 2,),
                  Container(height: 100,width: 90,color: Colors.grey,),
                  Spacer(), // flex can also be given
                  Container(height: 100,width: 90,color: Colors.grey,),

                ],
              ),

            )
          ],
        ),

      ),
    );
  }
}
