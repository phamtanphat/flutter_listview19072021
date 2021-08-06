import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_listview19072021/model/task.dart';
import 'package:flutter_listview19072021/page/create_page.dart';
import 'package:flutter_listview19072021/shared/list_singleton.dart';

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

  var listTasks = SingletonList().lisTasks;

  void addTask(Task task){
    setState(() {
      SingletonList().lisTasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context){
                  return CreatePage();
                },
                settings: RouteSettings(
                  arguments: {
                    "addTask" : addTask
                  }
                )
              )
            );
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("List Task"),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: listTasks.length,
              itemBuilder: (context ,index){
                  return ListTile(
                    onTap: (){

                    },
                    title: Text(listTasks[index].name),
                    subtitle: Text(listTasks[index].description),
                    leading: Text(listTasks[index].id.toString()),
                    trailing: InkWell(
                      onTap: (){
                        setState(() {
                          listTasks.remove(listTasks[index]);
                        });
                      },
                        child: Icon(Icons.delete , color: Colors.red)
                    ),
                  );
              }
          )
      ),
    );
  }
}
