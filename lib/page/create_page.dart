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
    var data = ModalRoute.of(context)!.settings.arguments as Map ;
    String chuoi = data['string'];
    int number = data['number'];
    print(chuoi);
    print(number);
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

