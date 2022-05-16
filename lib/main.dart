import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'my first app',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body:Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('first container'),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}


