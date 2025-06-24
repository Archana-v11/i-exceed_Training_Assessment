import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyRenderFlexApp());
}
class MyRenderFlexApp extends StatelessWidget {
  const MyRenderFlexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Center(child: Text("Render Flex Overflow Demo")),
        backgroundColor: Colors.lime,
      ),
        body: Row(
          children: [
            Expanded(
              child: Container(
                child: Image.network("https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-souvenirpixels-414612.jpg&fm=jpg"),
              ),
            ),
            SizedBox(width: 20,), // to give space b/w 2 containers
            Expanded(
              child: Container(
                child: Text("Mountain nightlife varies greatly, from bustling apres-ski scenes in ski resorts to quieter, more traditional experiences in villages. Some mountain towns offer lively bars and clubs, while others focus on quieter activities like stargazing or enjoying live music in local establishments. "),

              ),
            ),
          ],
        ),

      ),
    );
  }
}
