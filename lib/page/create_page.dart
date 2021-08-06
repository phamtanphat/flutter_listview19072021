import 'package:flutter/material.dart';
class CreatePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CreatePageContainer();
  }
}

class CreatePageContainer extends StatefulWidget {

  @override
  _CreatePageContainerState createState() => _CreatePageContainerState();
}

class _CreatePageContainerState extends State<CreatePageContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Task"),
      ),
      body: Container(
        child: Center(
          child: Text("Nothing"),
        ),
      ),
    );
  }
}

