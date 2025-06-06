import 'package:flutter/material.dart';

void main() => runApp(ImageDemoApp());

class ImageDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageExamplePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget Example',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            // Asset Image
            Center(child: Text("Asset Image", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/laptop.png',
              width: 250,
              height: 150,
              fit: BoxFit.contain,
            ),

            SizedBox(height: 30),

            // Network Image
            Text("Network Image", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Image.network(
              'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
              width: 250,
              height: 150,
              fit: BoxFit.contain,
            ),

          ],
        ),
      ),
    );
  }
}
