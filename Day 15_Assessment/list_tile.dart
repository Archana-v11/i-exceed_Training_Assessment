import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyListTileApp());
}
class MyListTileApp extends StatelessWidget {
  const MyListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Tile Demo"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
          ),
        body: ListView(children: [

          ListTile(
            leading: Icon(Icons.person),
            iconColor: Colors.blue,
            title: Text("Archana V"),
            subtitle: Text("Software Developer"),
            trailing: Icon(Icons.verified_user),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
          ),
          ListTile(
            leading: Icon(Icons.person),
            iconColor: Colors.blue,
            title: Text("Dharshini V"),
            subtitle: Text("ECE Engineer"),
            trailing: Icon(Icons.verified_user),
          ),
          ListTile(
            leading: Icon(Icons.person),
            iconColor: Colors.blue,
            title: Text("Dharshini R"),
            subtitle: Text("Flutter Developer"),
            trailing: Icon(Icons.verified_user),
          ),
        ],)
      ),
    );
  }
}
