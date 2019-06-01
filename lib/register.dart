import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: AppBar(
              title: Text('Conversations')
          ),
          body: Material(
            child: TextFormField(
              onFieldSubmitted:(String textInput){
                print('$textInput');
                Navigator.of(context).pushNamed('conversation', arguments: { 'user': textInput });
            },
              decoration: InputDecoration(
              labelText: 'Enter your username'
              ),
            )
          )
      );
  }
}

          
