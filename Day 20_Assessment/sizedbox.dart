import 'package:flutter/material.dart';

void main() {
  runApp(const MySizedBoxDemo());
}

class MySizedBoxDemo extends StatelessWidget {
  const MySizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: Text("SizedBox Variations Demo")),
            backgroundColor: Colors.lightBlueAccent[100],
        ),
        body: Padding(
          padding:  EdgeInsets.all(16.0),
          child: ListView(
            children: [

              // Standard SizedBox (spacing)
              Text("1. SizedBox (Vertical Space)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Container(height: 100, color: Colors.yellowAccent),
              SizedBox(height: 10),
              Container(height: 100, color: Colors.indigoAccent),
              Divider(),

              // SizedBox.fromSize
              Text("2. SizedBox.fromSize", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox.fromSize(
                size:  Size(120, 60),
                child: ElevatedButton(
                  onPressed: () {},
                  child:  Text("fromSize button",),
                ),
              ),
              Divider(),

              // SizedBox.shrink
              Text("3. SizedBox.shrink (with ConstrainedBox)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              ConstrainedBox(
                constraints:  BoxConstraints(
                  minWidth: 100,
                  minHeight: 50,
                ),
                child: SizedBox.shrink(
                  child: ElevatedButton(
                    onPressed: () {},
                    child:  Text("shrink button"),
                  ),
                ),
              ),
              Divider(),

              // SizedBox.expand
              Text("4. SizedBox.expand (with ConstrainedBox)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 150,
                  maxWidth: 150,
                ),
                child: SizedBox.expand(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("expand button"),
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