import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  //int counter = 0;
  //async await like JS
  void getState() async{
    //Simulate Network request to get username
    //Future.delayed = setTimeout js
    String username = await Future.delayed(Duration(seconds: 3), (){
      return('khaditafzka');
    });
    String bio = await Future.delayed(Duration(seconds: 2), (){
      return('senegalese, dev, reader');
    });
    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    print('initiate function ran');
    getState();

  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body:
        Text('location_page'),
     /* RaisedButton(
          onPressed: (){
            setState((){
              counter += 1;
            });
          },
        child: Text('counter is $counter'),
      ),*/
    );
  }
}
