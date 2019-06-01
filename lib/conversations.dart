import 'package:flutter/material.dart';

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversations')
      ),
      body: Material(
      child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Row(
                    children: [
//                    allign right message, padding and bigger font
                      Image.network('https://images.unsplash.com/photo-1509460913899-515f1df34fea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"',width: 50,),
                      Text("Person name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                      Expanded(
                        child:Align(
                            child:Text('message1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                            alignment: Alignment.centerRight
                        ),
                      )
                    ]
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Row(
                    children: [
//                    allign right message, padding and bigger font
                      Image.network('https://images.unsplash.com/photo-1509460913899-515f1df34fea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"',width: 50,),
                      Text("Person name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                      Expanded(
                        child:Align(
                            child:Text('message1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                            alignment: Alignment.centerRight
                        ),
                      )
                    ]
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Take me to my messages');
                },
                child: Row(
                    children: [
//                    allign right message, padding and bigger font
                      Image.network('https://images.unsplash.com/photo-1509460913899-515f1df34fea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"',width: 50,),
                      Text("Person name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                      Expanded(
                        child:Align(
                            child:Text('message1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                            alignment: Alignment.centerRight
                        ),
                      )
                    ]
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Row(
                    children: [
//                    allign right message, padding and bigger font
                      Image.network('https://images.unsplash.com/photo-1509460913899-515f1df34fea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"',width: 50,),
                      Text("Person name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                      Expanded(
                        child:Align(
                            child:Text('message1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                            alignment: Alignment.centerRight
                        ),
                      )
                    ]
                ),
              ),
            ),
          ],
        )
    ),
    );
  }
}
