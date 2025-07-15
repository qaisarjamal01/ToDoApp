import 'package:flutter/material.dart';
import 'package:to_do_app/utils/todo_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List toDoList = [
    ['Learn Flutter',false],
    ['drink coffee', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple ToDoApp'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context,index){
        return TodoList(taskName: toDoList[index][0],taskCompleted: toDoList[index][1],);
      })
    );
  }
}
