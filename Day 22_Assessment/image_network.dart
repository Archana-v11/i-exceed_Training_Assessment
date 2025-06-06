import 'package:flutter/material.dart';

void main() => runApp(ImageNetworkPropertyDemo());

class ImageNetworkPropertyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NetworkImageExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NetworkImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image.network Properties"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Image.network(
            // Use an invalid or valid URL to test errorBuilder
            'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',

            // 🔹 Size properties
            width: 200,
            height: 200,

            // 🔹 Color tint over the image
            //color: Colors.indigo.withOpacity(0.5),

            // 🔹 Image alignment inside the box
            alignment: Alignment.center, // Try: topLeft, bottomRight, centerLeft, etc.

            // 🔹 How the image should be fit inside the box
            fit: BoxFit.cover, // Try: fill, contain, fitWidth, fitHeight

            // 🔹 Handle error if image fails to load
            errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
              return Center(
                child: Text(
                  "No such image",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
