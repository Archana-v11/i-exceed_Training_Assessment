import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  return runApp(MyLazyLoadingApp());
}
class MyLazyLoadingApp extends StatelessWidget {
  const MyLazyLoadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Center(child: Text("Lazy Loading Demo")),
        backgroundColor: Colors.greenAccent,
      ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return lazyloading(index);
            }
        ),
      ),
    );
  }

  Widget lazyloading(int index) {
    print("Lazy Loading Called $index times");
    return Container(
      margin: EdgeInsets.all(20),
      width:200,
      height: 200,
      color: Colors.blueGrey,
      child: Center(child: Text("Transaction $index")),
    );
  }
}