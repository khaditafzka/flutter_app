import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{

  String  location; //location name for UI
  String  time = "" ; //the time in that location
  String  flag; //url to an asset flag icon
  String  url; //location url

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async{
    try{
      //make request
      var url_ = Uri.parse( 'http://worldtimeapi.org/api/timezone/$url');
      Response response = await get(url_);
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

      time = now.toString();
    }catch(e){
      print('error : $e');
      time = 'error';
    }



  }



}