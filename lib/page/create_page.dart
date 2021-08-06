import 'package:flutter/material.dart';
import 'package:flutter_listview19072021/model/task.dart';
import 'package:flutter_listview19072021/shared/list_singleton.dart';
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

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

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
                      int id = 0;
                      if (SingletonList().lisTasks.isNotEmpty){
                        id = SingletonList().lisTasks[SingletonList().lisTasks.length - 1].id;
                      }
                      var task = Task(id: id + 1 ,name: title , description: description);

                      var dataMap = ModalRoute.of(context)!.settings.arguments as Map;

                      var funcAddTask = dataMap['addTask'];

                      funcAddTask(task);

                      Navigator.pop(context);

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Add Task Success")));

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

