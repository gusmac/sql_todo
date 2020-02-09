import 'package:flutter/material.dart';
import 'package:sql_todo/screens/todo_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQL Todo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: TodoListScreen(),
    );
  }
}
