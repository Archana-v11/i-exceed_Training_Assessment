import 'package:flutter/material.dart';

void main() {
  runApp(MyCardDemo());
}

class MyCardDemo extends StatelessWidget {
  const MyCardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Card Demo')),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Card(
            color: Colors.white,
            elevation: 12.0,
            shadowColor: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.teal,
                width: 3,
              ),
            ),
            borderOnForeground: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            semanticContainer: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                    Image.network(
                      'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg',
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),


                  // Content section
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.teal.shade100, Colors.white],

                      ),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(

                      children: [
                        Row(
                          children: [
                            Icon(Icons.card_giftcard, color: Colors.teal),
                            SizedBox(width: 8),
                            Text(
                              "Special Offer",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "This card contains an image, icon, button, ripple effect and a gradient!",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            onPressed: () {
                              print("Explore button clicked!");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                            ),
                            child: Text("Explore"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

          ),
        ),
      ),
    );
  }
}
