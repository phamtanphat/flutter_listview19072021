import 'package:flutter/material.dart';
import 'package:flutter_listview19072021/page/create_page.dart';
import 'package:flutter_listview19072021/page/list_page.dart';

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
        routes: {
          "/" : (context){
            return ListPage();
          },
          "/create-page" : (context) {
            return CreatePage();
          }
        },
        initialRoute: "/",
    );
  }
}

