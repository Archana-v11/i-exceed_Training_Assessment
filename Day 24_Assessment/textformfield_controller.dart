import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleTextFormFieldPage(),
    );
  }
}

class SimpleTextFormFieldPage extends StatefulWidget {
  @override
  _SimpleTextFormFieldPageState createState() => _SimpleTextFormFieldPageState();
}

class _SimpleTextFormFieldPageState extends State<SimpleTextFormFieldPage> {
  // 1. Instantiating the Controller
  TextEditingController myController = TextEditingController();

  // Form key for validation
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // 4. Disposing the Controller
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextFormField Controller Example")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey, // Assign the form key
          child: Column(
            children: [
              // 2. Assigning the Controller in TextFormField
              TextFormField(
                controller: myController,
                decoration: InputDecoration(
                  labelText: "User Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // 3. Reading the text and showing it
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String enteredText = myController.text;
                    print("Entered Text is $enteredText");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Username is: $enteredText")),
                    );
                  }
                },
                child: Text("Submit"),
              ),

              // Clear button
              ElevatedButton(
                onPressed: () {
                  myController.clear();
                  print("Text Cleared");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Text cleared")),
                  );
                },
                child: Text("Clear"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
