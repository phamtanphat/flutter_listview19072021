import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo Context"),
        ),
        body: Text("A")
      )
    );
  }
}

class Ongba extends StatefulWidget {

  late Widget child;

  Ongba({required this.child});

  @override
  _OngbaState createState() => _OngbaState();
}

class _OngbaState extends State<Ongba> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }
}

class Bame extends StatefulWidget {
  late Widget child;

  Bame({required this.child});

  @override
  _BameState createState() => _BameState();
}

class _BameState extends State<Bame> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }
}


