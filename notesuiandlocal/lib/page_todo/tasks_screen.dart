import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:provider/provider.dart';
//import 'package:todaydo_app/models/task_data.dart';
//import 'package:todaydo_app/screens/add_task_screen.dart';
//import 'package:todaydo_app/widgets/tasks_list.dart';
//import 'package:provider/provider.dart';

//import '../model/task_data.dart';
//import '../widget/tasks_list.dart';
import '../model_todo/task_data.dart';
import '../widget_todo/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen((newTaskTitle) {
                  // setState(() {
                  //   tasks.add(Task(name: newTaskTitle));
                  //   Navigator.pop(context);
                  // });
                }),
              ),
            ),
          );
        },
        backgroundColor:Colors.black ,//Colors.indigo[400]
        child:const Icon(Icons.add),
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(onPressed: (){
                    Navigator.pop(context);
                }, icon:const Icon(Icons.arrow_back,size: 30,
                  color: Colors.white,)),
                  const  SizedBox(width: 10),
               const Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
              const  SizedBox(width: 20),
              const  Text(
                  'ToDayDo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style:const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          const  SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius:const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}