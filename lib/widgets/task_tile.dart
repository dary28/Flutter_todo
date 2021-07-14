import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final Function checkBoxCallBack;
  final String taskTitle;
  final onlongpresscallback;
  TaskTile({this.isChecked,this.taskTitle,this.checkBoxCallBack,this.onlongpresscallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onlongpresscallback,
      title : Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked?TextDecoration.lineThrough:null),
        ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}