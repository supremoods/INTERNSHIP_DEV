import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/Header.dart';
import '../widgets/TodoItem.dart';
import '../widgets/Footer.dart';
import '../model/ToDo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final toDoList = ToDo.getToDos();
  List<ToDo> _foundToDo = [];

  @override
  void initState() {
    _foundToDo = toDoList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Header(),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          color: darkPrimaryColor,
        ),
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Tasks',
              style: TextStyle(
                color: lightColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ToDoItem(foundToDo: _foundToDo),
            SizedBox(height: 20.0),
            Footer(addNewTodoItem: addNewTodoItem),
          ],
        ),
      ),
    );
  }

  void addNewTodoItem(ToDo newTodo) {
    setState(() {
      _foundToDo.add(newTodo);
    });
  }
}
