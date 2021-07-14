import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeylist/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
            itemBuilder: (context,index){
              final task =  taskData.tasks[index];
              return TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  checkBoxCallBack: (bool newValue){
                    taskData.updateTask(task);
                  },
                  onlongpresscallback: (){
                    taskData.deleteTask(index);
                  },
                );
            },
            itemCount: taskData.tasks.length,
        );
      },
    );
  } }

// children: [
//
// TaskTile(taskTitle: tasks[1].name,isChecked: tasks[0].isDone,),
// TaskTile(taskTitle: tasks[2].name,isChecked: tasks[0].isDone,),
// //TaskTile(taskTitle: tasks[].name,isChecked: tasks[0].isDone,),
// ],