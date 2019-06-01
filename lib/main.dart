import 'package:flutter/material.dart';
import 'package:flutter_app/messaging.dart';
import 'conversations.dart';
import 'register.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MessagingWidget(),
      routes: {
        'conversation': (BuildContext context) => Conversations(),

      },

    );
  }
}

