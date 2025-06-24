import 'package:flutter/material.dart';

void main() {
  runApp(MyPaddingDemo());
}

class MyPaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("EdgeInsets with Cards"),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "1. EdgeInsets.all(16)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Card(
                  color: Colors.red[100],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("Applies 16 pixels padding on all four sides"),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "2. EdgeInsets.symmetric(horizontal: 24, vertical: 12)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Card(
                  color: Colors.green[100],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("Applies horizontal: 24 and vertical: 12 padding"),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "3. EdgeInsets.only(left: 10, top: 20, right: 30, bottom: 40)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 20, right: 30, bottom: 40),
                child: Card(
                  color: Colors.blue[100],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("Custom padding: left: 10, top: 20, right: 30, bottom: 40"),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "4. EdgeInsets.fromLTRB(5, 15, 25, 35)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 15, 25, 35),
                child: Card(
                  color: Colors.orange[100],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("LTRB padding: Left 5, Top 15, Right 25, Bottom 35"),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "5. EdgeInsetsDirectional.all(20)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.all(20),
                child: Card(
                  color: Colors.purple[100],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("Directional padding of 20 on all sides (LTR aware)"),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "6. EdgeInsetsDirectional.only(start: 15, top: 10, end: 25, bottom: 5)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 15,
                  top: 10,
                  end: 25,
                  bottom: 5,
                ),
                child: Card(
                  color: Colors.cyan[100],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("Start: 15, Top: 10, End: 25, Bottom: 5 (direction aware)"),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "7. EdgeInsetsDirectional.fromSTEB(10, 20, 30, 40)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 30, 40),
                child: Card(
                  color: Colors.brown[100],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("STEB padding: Start 10, Top 20, End 30, Bottom 40"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
