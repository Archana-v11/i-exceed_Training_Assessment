import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.pinkAccent,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.blueAccent,
        ),
       body:  Row(children: [
           Padding(
             padding: const EdgeInsets.all(30.0),
             child: Container(
               width: 150.0,
               height: 150.0,
               color: Colors.blue,
               padding: EdgeInsets.only(left:20.0),
               child: Text("Container1"),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width: 150.0,
               height: 150.0,
               color: Colors.yellowAccent,
               //padding: EdgeInsets.only(right:30.0),
               //child:Text("Container2"),
               child: Image.network(
                 'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg',
                 fit: BoxFit.cover,
               ),
             ),
           ),
         ],),
        drawer: Drawer(backgroundColor: Colors.yellowAccent),


      ),
    );
  }
}
