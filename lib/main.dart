import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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

  List<Quote> quotes =[
    Quote(author:'Oscar Wilde',text: 'Be yourself; everyone else is already taken'),
    Quote(author:'Oscar Wilde',text:  'I have nothing to declare except my genius'),
    Quote(author:'Oscar Wilde',text:  'The truth is rarely pure and never simple'),
  ];

  //Widget quoteTemplate(quote){
    //return QuoteCard(quote : quote);
  //}

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
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
             }
        )).toList(),
      ),
    );
  }
}








