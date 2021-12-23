import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteTemplate extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteTemplate({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[80]
              ),
            ),
            SizedBox(height: 7.0),
            Text(quote.author,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 8.0,),
            FlatButton.icon(onPressed: delete,
                icon:Icon(Icons.delete) , label: Text('Delete Quote'))
          ],
        ),
      ),
    );
  }
}
