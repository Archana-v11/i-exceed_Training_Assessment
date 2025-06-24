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
          // if the column/row is given and inside it if the container
          // or listview or anything is given it needs to be wrapped with Expanded
          //Container(width: 150,height: 150,color: Colors.purpleAccent,),
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
