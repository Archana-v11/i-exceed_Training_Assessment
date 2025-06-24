import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSelected = true; // for password visibility toggle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("TextField With Stateful Widget")),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            // Username TextField
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[100],
                hintText: "Enter your username",
              ),
            ),

            SizedBox(height: 16),

            // Password TextField
            TextField(
              obscureText: isSelected,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                hintText: "Enter your password",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[100],
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  icon: isSelected
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
