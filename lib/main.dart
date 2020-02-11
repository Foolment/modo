import 'package:Modo/widget/todo-list-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() => runApp(ModoApp());

class ModoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true;
    return MaterialApp(
      home: Scaffold(body: TodoListPage()),
    );
  }
}
