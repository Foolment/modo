import 'package:Modo/widget/add-todo-page.dart';
import 'package:Modo/widget/logo-bar.dart';
import 'package:Modo/widget/todo-list-View.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  final GlobalKey<TodoListViewState> todoListViewKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 128, left: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(bottom: 60), child: LogoBar()),
            Expanded(child: TodoListView(key: todoListViewKey)),
            GestureDetector(
                onTap: () => _addTodo(context),
                child: Container(
                    margin:
                        const EdgeInsets.only(right: 36, bottom: 36, top: 24),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset('assets/images/ic_add_todo.png'))))
          ],
        ));
  }

  void _addTodo(BuildContext context) async {
    final content =
        await Navigator.push(context, MaterialPageRoute(builder: (_) {
      return AddTodoPage();
    }));
    todoListViewKey.currentState.addTodo(content as String);
  }
}
