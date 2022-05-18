import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:QuoteList(),
));

//statelessWidget allow us to rerender the app whenever changes are saved
//StateFulWidget to allow us change state of var on the app
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes =[
    'Be yourself; everyone else is already taken',
    'I have nothing to declare except my genius',
    'The truth is rarely pure and never simple'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}






