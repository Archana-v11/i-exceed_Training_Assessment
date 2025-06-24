import 'package:flutter/material.dart';

void main() {
  runApp(MyDrawerApp());
}

class MyDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Demo"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text(
                'Welcome User',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            // Menu Items
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),

            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),

            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Main Screen Content',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
