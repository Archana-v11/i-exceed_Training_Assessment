import 'package:flutter/material.dart';

void main() {
  runApp(MyTextFieldApp());
}

class MyTextFieldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("TextField Full Example")),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: Padding(

          padding: EdgeInsets.all(16),
          child: Column(
            children: [
                SizedBox(height: 20,),
              // 1. Name TextField
              TextField(
                onChanged: (value) {
                  print("Name: $value");
                },
                decoration: InputDecoration(
                  labelText: "User Name",
                  prefixText: "Mr./Ms. ",
                  prefixIcon: Icon(Icons.account_circle),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  filled: true,
                  fillColor: Colors.deepPurple[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 2,
                    ),
                  ),
                  hintText: "Enter your name",
                ),
                maxLength: 30,
              ),

              SizedBox(height: 16),

              // 2. Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 2,
                    ),
                  ),
                  hintText: "Enter your password",
                ),
              ),

              SizedBox(height: 16),

              // 3. Email TextField
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  suffixText: "@example.com",
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Enter your email",
                ),
              ),

              SizedBox(height: 16),

              // 4. Phone Number TextField
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  prefixIcon: Icon(Icons.phone),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Enter your number",
                ),
                maxLength: 10,
              ),

              SizedBox(height: 16),

              // 5. Notes TextField (multiline)
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: "Notes",
                  alignLabelWithHint: true,
                  prefixIcon: Icon(Icons.note),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Write your notes here...",
                ),
                maxLength: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}


