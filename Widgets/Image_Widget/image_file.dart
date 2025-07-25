import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.photos.request();
  runApp(MyImage());
}
class MyImage extends StatelessWidget {
  const MyImage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: Image.file(File('/storage/emulated/0/Download/amazon1.png'))
        ),
      ),
    );
  }
}