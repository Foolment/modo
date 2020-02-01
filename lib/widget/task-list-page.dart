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
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text('Tasks',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                ),
                Text(
                  'Lists',
                  style: TextStyle(fontSize: 28, color: Colors.grey[500]),
                )
              ],
            ),
            Icon(Icons.add_box, size: 50),
            Text('Add List'),
          ],
        ));
  }
}
