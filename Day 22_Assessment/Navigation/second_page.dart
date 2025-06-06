import 'package:flutter/material.dart';
import 'package:project1/Navigation/third_page.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.deepPurple,
      ),

      body: ElevatedButton(onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyThirdPage()),
        );
      }, child:Text("Go to Third page"))

      // If you need button in 2 nd page and if by clicking that button
      // if i need to move back to the home page then do this method 'pop'
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // ⬅ Go back to the previous page
      //       Navigator.pop(context);
      //     },
      //     child: Text("Go Back"),
      //   ),
      // ),
    );
  }
}
