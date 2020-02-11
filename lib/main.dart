import 'package:Modo/widget/todo-list-page.dart';
import 'package:flutter/material.dart';

void main() => runApp(ModoApp());

class ModoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: TodoListPage()),
    );
  }
}
