import 'package:flutter/material.dart';
class UpdatePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return UpdatePageContainer();
  }
}

class UpdatePageContainer extends StatefulWidget {


  @override
  _UpdatePageContainerState createState() => _UpdatePageContainerState();
}

class _UpdatePageContainerState extends State<UpdatePageContainer> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Task"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                controller: titleController,
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
                controller: descriptionController,
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
                  child: Text("Update Task")
              )
            ],
          ),
        ),
      ),
    );
  }
}
