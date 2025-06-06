import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp page"),
        backgroundColor: Colors.grey,
      ),
      body: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/');}, child: Text("Go to Home Page")),
    );
  }
}
