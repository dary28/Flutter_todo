import 'package:flutter/cupertino.dart';
import 'package:todoeylist/models/tasks.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
  ];
  int get taskCoount {
    return tasks.length;
  }
  void addTask(String taskName){
    final task = Task(name: taskName);
    tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
      task.toggleDone();
      notifyListeners();
  }
  void deleteTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}