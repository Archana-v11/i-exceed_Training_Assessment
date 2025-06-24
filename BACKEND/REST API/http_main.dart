import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'http_api.dart';

void main()
{
  runApp(MyRestApiApp());
}
class MyRestApiApp extends StatefulWidget {
  const MyRestApiApp({super.key});

  @override
  State<MyRestApiApp> createState() => _MyRestApiAppState();
}

class _MyRestApiAppState extends State<MyRestApiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CallMyApiApp(),
    );
  }
}
