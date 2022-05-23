import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async{

    //make request
    var url = Uri.parse( "http://worldtimeapi.org/api/timezone/Africa/Dakar" );
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    //print(data);

    //get Props from data
    String datetime = data['datetime'];

    //get specific value of an string using the index range
    String offset = data['utc_offset'].substring(1,3);
    //print(datetime);
    //print(offset);

    //Convert String to dateTime
    DateTime now = DateTime.parse(datetime);

    //add the offset to the datetime
    now = now.add(Duration(hours: int.parse(offset)));

    print(now);


  }

  @override
  void initState() {
    super.initState();
    getTime();

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Text("loading widget"),
    );
  }
}
