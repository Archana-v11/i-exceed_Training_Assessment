import 'package:flutter/material.dart';
import 'package:project1/Navigation_NamedRouters/signup.dart';

import 'login.dart';

void main()
{
  runApp(MyHome());
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>HomePage(),
        '/login':(context)=>Login(),
        '/signup':(context)=>Signup(),
      },
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text("Home Page")),
          backgroundColor: Colors.teal,
        ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/login');}, child: Text("Login")),
            ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/signup');}, child: Text("Sign Up")),
          ],
        ),
      ),

    );
  }
}
