import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getState() async{
    var url = Uri.parse( "https://jsonplaceholder.typicode.com/todos/1" );
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);

  }

  @override
  void initState() {
    super.initState();
    getState();

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Text("loading widget"),
    );
  }
}
