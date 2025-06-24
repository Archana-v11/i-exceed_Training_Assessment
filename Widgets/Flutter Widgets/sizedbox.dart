import 'package:flutter/material.dart';

void main() {
  runApp(MySizedBoxDemo());
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
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Standard SizedBox (spacing)
              Text(
                "1. SizedBox (Vertical Space)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(height: 100, color: Colors.yellowAccent),
              SizedBox(height: 10),
              Container(height: 100, color: Colors.indigoAccent),

              SizedBox(height: 15),
              Divider(),
              SizedBox(height: 15),

              // SizedBox.fromSize
              Text(
                "2. SizedBox.fromSize",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Center(
                child: SizedBox.fromSize(
                  size: Size(170, 60),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("fromSize button"),
                  ),
                ),
              ),

              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 15),

              // SizedBox.shrink with ConstrainedBox
              const Text(
                "3. SizedBox.shrink (with ConstrainedBox)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 170,
                    minHeight: 50,
                  ),
                  child: SizedBox.shrink(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("shrink button"),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 15),

              // SizedBox.expand with ConstrainedBox
              const Text(
                "4. SizedBox.expand (with ConstrainedBox)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 100,
                    maxHeight: 100,
                  ),
                  child: SizedBox.expand(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("expand button"),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
