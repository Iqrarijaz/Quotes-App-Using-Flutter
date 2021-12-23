import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';
void main() {
  runApp(MaterialApp(
    home:QuoteList (),
  ));
}
class QuoteList extends StatefulWidget {

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes=[
    Quote(author:"Andre Gide",text:"It is better to be hated for what you are than to be loved for what you are not."),
  Quote(author:"Mae West",text:"You only live once, but if you do it right, once is enough")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Life Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: (

      Column(
        children: quotes.map((quote) =>QuoteTemplate(
            quote: quote,
          delete:()
            {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      )
      ),
    );
  }
}

