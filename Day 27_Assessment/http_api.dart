import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CallMyApiApp extends StatefulWidget {
  const CallMyApiApp({super.key});

  @override
  State<CallMyApiApp> createState() => _CallMyApiAppState();
}

class _CallMyApiAppState extends State<CallMyApiApp> {
  Map<String,dynamic>? data;
  @override
  void initState() {
    hitAPI();
    super.initState();
  }

  Future hitAPI()async
  {
    http.Response response;
    response=await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    print(response.statusCode);
    data= jsonDecode(response.body);
    print(data?['data']); // to print all the data from the url
    print(data?['data'][0]); // to print only the first index data
    for(int i=0;i<data!.length;i++)
      {
        print(data?['data'][i]['first_name']); // to print particular column
      }
   // print(data.runtimeType);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("REST API HTTP REQUEST")),
        backgroundColor: Colors.tealAccent,
    ),
     body: ListView(
       children: [
         ListTile(
           title: Text(data!['data'][0]['first_name']),
           subtitle: Text(data!['data'][0]['email']),
         ),

         ListTile(
           title: Text(data!['data'][1]['first_name']),
           subtitle: Text(data!['data'][1]['email']),
         ),

         ListTile(
           title: Text(data!['data'][2]['first_name']),
           subtitle: Text(data!['data'][2]['email']),
         ),

         ListTile(
           title: Text(data!['data'][3]['first_name']),
           subtitle: Text(data!['data'][3]['email']),
         ),

         ListTile(
           title: Text(data!['data'][4]['first_name']),
           subtitle: Text(data!['data'][4]['email']),
         ),

         ListTile(
           title: Text(data!['data'][5]['first_name']),
           subtitle: Text(data!['data'][5]['email']),
         ),
       ],),
    );
  }
}
