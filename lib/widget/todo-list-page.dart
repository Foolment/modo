import 'package:Modo/widget/logo-bar.dart';
import 'package:Modo/widget/todo-list-View.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 128, left: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(bottom: 60), child: LogoBar()),
            Expanded(child: TodoListView()),
            Container(
                margin: const EdgeInsets.only(right: 36, bottom: 36, top: 24),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/ic_add_todo.png')))
          ],
        ));
  }
}
