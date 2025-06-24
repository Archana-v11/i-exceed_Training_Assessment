import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyListViewApp());
}
class MyListViewApp extends StatelessWidget {
  const MyListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View Demo"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          //shadowColor: Colors.cyanAccent, -> to give shadow color for app bar
          //elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          //reverse: true,
          //padding: EdgeInsets.all(50.0), -> this is for padding the entire container
          //itemExtent: 200.0, // changes the size of all the container
          //prototypeItem:const SizedBox(height:300.0,width:200.0), -> this is also for padding the entire container

          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 250,
              child: Center(child: Text("Container 1"),),
              //color: Colors.lime.shade300, -> decoration is used means color should not be used separately outside
              // instead use it in decoration itself
              decoration:
              BoxDecoration(
                  color:Colors.lime.shade300,
                  border: Border.all(color: Colors.green.shade900,width: 20.0),
                  borderRadius: BorderRadius.circular(20.0)),


            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 2500,
              alignment: Alignment.center,
              child: Text("Container 2",
              style: TextStyle(
                color: Colors.white
              ),),
              color: Colors.purpleAccent.shade200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 100,
              alignment: Alignment.center,
              child: Text("Container 3"),
              color: Colors.deepOrangeAccent.shade100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 100,
              alignment: Alignment.center,
              child: Text("Container 4"),
              color: Colors.amberAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 100,
              alignment: Alignment.center,
              child: Text("Container 5"),
              color: Colors.greenAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 100,
              alignment: Alignment.center,
              child: Text("Container 6"),
              color: Colors.blueGrey,
            ),
          ),
        ],


        )
      ),
    );
  }
}
