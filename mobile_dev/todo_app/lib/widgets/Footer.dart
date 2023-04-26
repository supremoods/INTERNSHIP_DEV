import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../model/ToDo.dart';


class Footer extends StatefulWidget {
  final Function(ToDo) addNewTodoItem;

  const Footer({Key? key, required this.addNewTodoItem}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final toDoList = ToDo.getToDos();
  List<ToDo> _foundToDo = [];

  @override
  void initState() {
    _foundToDo = toDoList;
    super.initState();
  }

  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
         // add button to add todo and textfield to enter todo
          child: Row(
            children: [
              Expanded(
                // background color of the textfield and border radius
                child: Container(
                  decoration: BoxDecoration(
                    color: lightColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    controller: _todoController,
                    decoration: InputDecoration(
                      hintText: 'Enter your todo',
                      contentPadding: EdgeInsets.all(16),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              FloatingActionButton(
                onPressed: () {
                  __addTodoItem(_todoController.text);
                },
                child: Icon(Icons.add),
                backgroundColor: primaryColor,
              ),
            ],
          ),
    );
  }

  void __addTodoItem(String title) {
    setState(() {
      ToDo newTodo = ToDo(
        id: _foundToDo.length + 1,
        title: title, 
        isDone: false
      );
      widget.addNewTodoItem(newTodo);
    });

    // alert user that todo has been added
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Todo added ${title} successfully'),
        duration: Duration(seconds: 2),
      ),
    );
   
    _todoController.clear();
  }




}