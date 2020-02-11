import 'package:flutter/material.dart';

class AddTodoPage extends StatelessWidget {
  final TextEditingController _todoContentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: _addTodoPage(context)),
    );
  }

  Widget _addTodoPage(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 128, left: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: _todoContentController,
              decoration: new InputDecoration(
                  hintText: 'Plan something to do',
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF83C7F3), width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF83C7F3)))),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: FlatButton(
                    onPressed: () => _addTodo(context),
                    child: Text('ADD'),
                    color: Color(0xFFE03535),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0))))
          ],
        ));
  }

  void _addTodo(BuildContext context) {
    String content = _todoContentController.text;
    if (content != null && content.isNotEmpty) {
      Navigator.of(context).pop(content);
    }
  }
}
