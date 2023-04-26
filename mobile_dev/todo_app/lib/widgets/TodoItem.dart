import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../model/ToDo.dart';

class ToDoItem extends StatefulWidget {
  // get the list of todos from the home screen
  final List<ToDo> foundToDo;

  ToDoItem({Key? key, required this.foundToDo}) : super(key: key);

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    List<ToDo> todos = widget.foundToDo;
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
              leading: Checkbox(
                value: todos[index].isDone,
                onChanged: (value) {
                  setState(() {
                    todos[index].isDone = value!;
                  });
                },
                // add color to the border of the checkbox
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                  side: BorderSide(color: lightColor),
                ),
                activeColor: primaryColor,
              ),
              title: Text(
                todos[index].title,
                style: TextStyle(
                  color: lightColor,
                  fontSize: 18,
                  decoration: todos[index].isDone
                      ? TextDecoration.lineThrough
                      : null,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    todos.removeAt(index);
                  });
                },
                icon: Icon(
                  Icons.delete,
                  color: dangerColor,
                ),
              ));
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: lightColor,
          );
        },
        itemCount: todos.length,
      ),
    );
  }
}
