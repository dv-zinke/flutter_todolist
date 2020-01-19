import 'package:flutter/material.dart';
import 'package:flutter_todolist/TodoList.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TodoList',
      home:TodoList(),
    );
  }
}
