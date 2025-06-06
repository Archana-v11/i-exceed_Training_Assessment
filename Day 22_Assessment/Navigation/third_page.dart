
import 'package:flutter/material.dart';

import 'home.dart';

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
        backgroundColor: Colors.yellowAccent,
      ),
    body: Center(
      child: ElevatedButton(onPressed: (){Navigator.push(
         context,
          MaterialPageRoute(builder: (context) => MyAppp()),
      );}, child: Text("Procceed"))
      // ElevatedButton(
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => MyLogin()),
      //     );},
      //   child: Text("Go Back"),
      // ),
    ),
    );
  }
}
