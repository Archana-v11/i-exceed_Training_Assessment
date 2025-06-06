import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/signup');}, child: Text("Go to SignUp page")),

          // to move back to previous page
          ElevatedButton(
    onPressed: () {
    Navigator.pop(context);
    },
    child: Text("Go Back"),
    )
        ],
      ),
    );
  }
}
