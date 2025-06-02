import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyUnboundedApp());
}
class MyUnboundedApp extends StatelessWidget {
  const MyUnboundedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        title: Center(child: Text("Unbounded Height Fix Demo")),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context,int index)
                {
                  return ListTile(
                    leading: Icon(Icons.star),
                    title: Text("Product $index"),
                    trailing: Icon(Icons.add_a_photo_outlined),
                  );
                }
            ),
          )
        ],
      ),
      ),
    );
  }
}

