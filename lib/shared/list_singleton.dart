import 'package:flutter_listview19072021/model/task.dart';

class SingletonList{
  static SingletonList _singletonList = SingletonList._internal();
  List<Task> lisTasks = [];

  factory SingletonList(){
    return _singletonList;
  }

  SingletonList._internal();
}
