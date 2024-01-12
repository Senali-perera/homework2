import 'package:flutter/material.dart';
import 'package:homework2/todo.dart';

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

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState()=>_TodoListState();
}

class _TodoListState extends State<TodoList>{
  final List<Todo> _todos = [];

  void _addTodoItem(){
    if (_todos.isEmpty){
      for (var i = 0; i <= 100; i++) {
        Todo newToDo = Todo("Buy Groceries $i" , false, "description");
        _todos.add(newToDo);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _addTodoItem();
  }

  Widget _viewTodoItem(Todo todo){
    return ListTile(
      title: Text(todo.title),
      subtitle: Text(todo.description),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          setState(() {
            _todos.remove(todo);
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return _viewTodoItem(_todos[index]);
        },
      ),
    );
  }
}