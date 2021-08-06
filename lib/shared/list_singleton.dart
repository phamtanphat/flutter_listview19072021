import 'package:flutter_listview19072021/model/task.dart';

class SingletonList{
  static SingletonList _singletonList = SingletonList._internal();
  List<Task> lisTasks = List.generate(5, (index) => Task(
                                                            id: index + 1,
                                                            name: "Task ${index + 1}",
                                                            description: "Description ${index + 1}"));

  factory SingletonList(){
    return _singletonList;
  }

  SingletonList._internal();
}
