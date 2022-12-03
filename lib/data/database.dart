import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is 1st time open app
  void createInitialData() {
    toDoList = [
      ["First", false],
      ["Second", false],
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
