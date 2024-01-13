import 'package:flutter/material.dart';
import 'package:homework2/todo.dart';
import 'package:homework2/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'TODO List App';

    return MaterialApp(
      title: title,
      home: TodoList(),
    );
  }
}