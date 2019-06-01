import 'package:flutter/material.dart';
import 'package:flutter_app/map.dart' as prefix0;
import 'conversations.dart';
import 'register.dart';
import 'map.dart';
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
      home: Map(),
      routes: {
        'conversation': (BuildContext context) => Conversations(),

      },

    );
  }
}

