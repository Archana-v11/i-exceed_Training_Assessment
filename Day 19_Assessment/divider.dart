import 'package:flutter/material.dart';

void main() {
  runApp(MyDividerApp());
}

class MyDividerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text('Divider Example'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 380,
                color: Colors.lightBlueAccent,
                child: const Center(child: Text("1 st Container")),
              ),

              SizedBox(height: 20),

              // Divider
              Divider(
                color: Colors.black54,
                thickness: 2,

              ),
              // it is wrapped with column so in this case divider is used
              // if it is wrapped with row then , VerticalDivider is used
              // this is the code 
              // VerticalDivider(
              //   color: Colors.black54,
              //   thickness: 2,
              //   indent: 200,
              //   endIndent: 200,
              // ),

              SizedBox(height: 20),

              Container(
                height: 100,
                width: 380,
                color: Colors.greenAccent,
                child: const Center(child: Text("2 nd Container")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
