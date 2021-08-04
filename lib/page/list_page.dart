import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_listview19072021/model/task.dart';

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
  var listTasks = [];

  @override
  void initState() {
    super.initState();
    listTasks = List.generate(5, (index) => Task(id: index + 1, name: "Task ${index + 1}", description: "Description ${index + 1}"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Task"),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: listTasks.length,
              itemBuilder: (context ,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        listTasks.remove(listTasks[index]);
                      });
                    },
                    title: Text(listTasks[index].name),
                    subtitle: Text(listTasks[index].description),
                    leading: Text(index.toString()),
                    trailing: Icon(Icons.delete , color: Colors.red),
                  );
              }
          )
      ),
    );
  }
}
