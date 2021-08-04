import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListPageContainer();
  }
}


class ListPageContainer extends StatefulWidget {

  @override
  _ListPageContainerState createState() => _ListPageContainerState();
}

class _ListPageContainerState extends State<ListPageContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Task"),
      ),
      body: Container(
        child: Text("Nothing"),
      ),
    );
  }
}

