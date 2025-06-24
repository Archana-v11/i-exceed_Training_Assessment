import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleTextFieldPage(),
    );
  }
}

class SimpleTextFieldPage extends StatefulWidget {
  @override
  _SimpleTextFieldPageState createState() => _SimpleTextFieldPageState();
}

class _SimpleTextFieldPageState extends State<SimpleTextFieldPage> {
  // 1. Instantiating the Controller
  TextEditingController myController = TextEditingController();

  @override
  void dispose() {
    // Disposing the Controller
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("TextField Controller Example")),
          backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // 2. Assigning the Controller
            TextField(
              controller: myController,
              decoration: InputDecoration(
                labelText: "User Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            // 3. Reading the text
            ElevatedButton(
              onPressed: () {
                String enteredText = myController.text;
                print("Entered Text is $enteredText"); // this line is used to show in the console that is terminal
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Username is : $enteredText")),
                ); // it is used to show in the application itself that is it is shown down
              },
              child: Text("Submit"),
            ),

            ElevatedButton(onPressed: (){
                myController.clear();
            }, child: Text("Clear"))
          ],
        ),
      ),
    );
  }
}
