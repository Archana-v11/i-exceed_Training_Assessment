import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Model_Class/User.dart';

void main()
{
  runApp(MyModelApi());
}
class MyModelApi extends StatefulWidget {
  const MyModelApi({super.key});

  @override
  State<MyModelApi> createState() => _MyModelApiState();
}

class _MyModelApiState extends State<MyModelApi> {

  @override
  void initState() {
    super.initState();
    getApi();
  }

  Future getApi() async
  {
    http.Response response;
    response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data=jsonDecode(response.body);
    print(data);
    List <User> l=[];
    for(var i in data)
      {
        User u=User(name: i['name'],email: i['email'],username: i['username']);
        l.add(u);
      }
    print(l.length);
    return l;
    //print(response.statusCode);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("REST API WITH MODEL CLASS")),
        backgroundColor:Colors.tealAccent ,
    ),
        body: FutureBuilder(
            future: getApi(), builder: (BuildContext context,AsyncSnapshot snapshot){
              return Container(
                child: ListView.builder(itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                  );
              }),
              );
        }),
    ),
    );
  }
}
// class User
// {
//   String? name,email,username;
//
//   User({this.name,this.email,this.username});
//
// }