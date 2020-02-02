import 'package:Modo/widget/line.dart';
import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 128),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 32, bottom: 60),
              child: Image.asset('assets/images/logo.png'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.only(right: 30),
                        child: CustomPaint(
                            painter: LinePainter(
                                strokeWidth: 1.5, color: Colors.grey[350])))),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text('Tasks',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                ),
                Text('Lists',
                    style: TextStyle(fontSize: 28, color: Colors.grey[500])),
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.only(left: 30),
                      child: CustomPaint(
                          painter: LinePainter(
                              strokeWidth: 1.5, color: Colors.grey[350]))),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 36, bottom: 14),
              alignment: Alignment.center,
              child: Image.asset('assets/images/ic_add_todo.png'),
            ),
            Container(
                alignment: Alignment.center,
                child: Text('Add List',
                    style: TextStyle(color: Colors.grey[500], fontSize: 18))),
          ],
        ));
  }
}
