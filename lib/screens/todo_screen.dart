import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/models/todo_model.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key, required this.todo}) : super(key: key);

  final TodoModel todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          todo.title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(todo.completed ? "Completed" : "Not completed"),
        trailing: Text('${todo.id}'),
      ),
    );
  }
}
