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
            body: Ongba(
              child: Bame(
                child: Concai(),
              ),
            )
        ));
  }
}

class Ongba extends StatefulWidget {
  late Widget child;

  Ongba({required this.child});

  static _OngbaState? of(BuildContext context) =>
      context.findAncestorStateOfType<_OngbaState>();

  @override
  _OngbaState createState() => _OngbaState();
}

class _OngbaState extends State<Ongba> {

  String name = "Phat";

  int age = 10;

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

  static _BameState? of(BuildContext context) =>
      context.findAncestorStateOfType<_BameState>();

  @override
  _BameState createState() => _BameState();
}

class _BameState extends State<Bame> {

  String data = "abc";

  @override
  Widget build(BuildContext context) {
    String name = Ongba.of(context)!.name;
    return Container(
      child: Column(
        children: [
          Text(name),
          widget.child
        ],
      ),
    );
  }
}

class Concai extends StatefulWidget {
  const Concai({Key? key}) : super(key: key);

  @override
  _ConcaiState createState() => _ConcaiState();
}

class _ConcaiState extends State<Concai> {
  @override
  Widget build(BuildContext context) {
    int? age = Ongba.of(context)?.age;
    String? data = Bame.of(context)?.data;
    return Container(
      child: Text(" Age ${age} , ${data}"),
    );
  }
}



