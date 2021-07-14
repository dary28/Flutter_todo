import 'package:flutter/material.dart';
import 'package:todoeylist/screens/add_task.dart';
import 'package:todoeylist/widgets/task_List.dart';
import 'package:provider/provider.dart';
import 'package:todoeylist/task_data.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  Widget buildBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(
              context: context,
            isScrollControlled: true,
            builder: (context)=>SingleChildScrollView(
                child:Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen(),
                )
            ),

          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30,right: 30,top: 60,bottom:30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              FloatingActionButton(
                child: CircleAvatar(
                  backgroundColor:Colors.white,
                  radius: 30,
                  foregroundColor: Colors.red ,
                  child: Icon(
                    Icons.list,
                    size: 30,
                  ),
                ),
                onPressed: (){print('high');},
              ),
              SizedBox(height: 10),
              Text('Todo',style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w700,

              ),),
              Text('${Provider.of<TaskData>(context).tasks.length} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )
              ),

            ]
          ),
    ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)

                  )
              ),
              padding: EdgeInsets.all(20),
              child: TasksList(),
            ),
          ),
        ],
      ));
  }
}


