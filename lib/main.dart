import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Home(),
));

//statelessWidget allow us to rerender the app whenever changes are saved
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //color of the app screen
      backgroundColor: Colors.grey[900],
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
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Avatar
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/robert-wiedemann-xwdWtPpKDeU-unsplash.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey[800],
            ),
            Text(
                'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            //add space beetween widgets
            SizedBox(height: 10.0,),
            Text(
              '@Khaditafzka',
              style: TextStyle(
                color: Colors.deepOrange,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 28.0
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'current Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            //add space beetween widgets
            SizedBox(height: 10.0,),
            Text(
              '6',
              style: TextStyle(
                  color: Colors.deepOrange,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.blueGrey[200],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'khadija231@outlook.com',
                  style: TextStyle(
                    color: Colors.blueGrey[200],
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            ),

          ],
        ),
      ),

    );
  }
}


