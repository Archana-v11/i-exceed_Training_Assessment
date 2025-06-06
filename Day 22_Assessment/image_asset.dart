import 'package:flutter/material.dart';

void main() => runApp(ImageAssetPropertiesDemo());

class ImageAssetPropertiesDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageAssetExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageAssetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image.asset Properties"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/images/laptop.png', // ✅ Image path in assets

          // 🔹 Size Properties
          height: 150,
          width: 150,

          // 🔹 Optional color filter
          //color: Colors.indigo.withOpacity(0.5), // Adds a tint

          // 🔹 If image is not found
          errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
            return Text(
              'No such image found',
              style: TextStyle(color: Colors.red, fontSize: 16),
            );
          },

          // 🔹 Repetition of image
          repeat: ImageRepeat.repeatY, // Other options: repeatX, repeatY, repeat

          // 🔹 Alignment inside its container
          alignment: Alignment.center, // Can use topLeft, bottomRight, etc.

          // 🔹 How the image should be fitted inside the box
          fit: BoxFit.contain, // Other options: fill, cover, fitHeight, fitWidth, etc.
        ),
      ),
    );
  }
}
