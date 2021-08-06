import 'package:flutter/material.dart';
import 'package:flutter_listview19072021/model/task.dart';
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
  late Task task;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var data = ModalRoute.of(context)!.settings.arguments as Map;
    task = data['task'] as Task;
    titleController.text = task.name;
    descriptionController.text = task.description;
  }

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
                    String title = titleController.text;
                    String description = descriptionController.text;

                    if (title.isEmpty || description.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Input")));
                      return;
                    }
                    task.name = title;
                    task.description = description;

                    var dataMap = ModalRoute.of(context)!.settings.arguments as Map;

                    var funcUpdateTask = dataMap['updateTask'];

                    funcUpdateTask(task);

                    Navigator.pop(context);

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Update Task Success")));

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
