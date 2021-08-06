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
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Title",
                  hintText: "Example : Task monday",
                  hintStyle: TextStyle(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: "Description",
                    hintText: "Example : Do home work",
                    hintStyle: TextStyle(fontSize: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: (){

                  },
                  child: Text("Add Task")
              )
            ],
          ),
        ),
      ),
    );
  }
}

