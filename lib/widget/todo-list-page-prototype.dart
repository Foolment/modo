import 'package:Modo/widget/line.dart';
import 'package:flutter/material.dart';

class TodoListPagePrototype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 128, left: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: const EdgeInsets.only(bottom: 60),
                            child: Image.asset('assets/images/logo.png')))),
                Container(
                    margin: const EdgeInsets.only(right: 32),
                    child: Icon(Icons.close))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 10, right: 16),
                    child: Image.asset('assets/images/ic_task_progress.png',
                        width: 20, height: 20)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: Text('My Tasks',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28))),
                    Text('2 of 7 tasks',
                        style: TextStyle(color: Colors.grey[500], fontSize: 16))
                  ],
                )
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 18, left: 30, bottom: 18),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: CustomPaint(
                            painter: LinePainter(
                                strokeWidth: 1.5, color: Colors.grey[350])))
                  ],
                )),
            Expanded(
                child: ListView(children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 1, right: 16),
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(value: false, onChanged: null)),
                      ),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            Text(
                              'Buy milk',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 4),
                                child: Text('Mon, Apr 30',
                                    style: TextStyle(color: Colors.grey[500])))
                          ]))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 1, right: 16),
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(value: false, onChanged: null)),
                      ),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            Text(
                              'Plan weekend outing',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ]))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 40, bottom: 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Publish Friday blog post',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              decoration: TextDecoration.lineThrough,
                              color: Color(0xFFE03535)),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: Text('Mon, Apr 30',
                                style: TextStyle(color: Colors.grey[500])))
                      ])),
              Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 1, right: 16),
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(value: false, onChanged: null)),
                      ),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            Text(
                              'Run 3 miles',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ]))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 40, bottom: 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Wash cloths',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              decoration: TextDecoration.lineThrough,
                              color: Color(0xFFE03535)),
                        )
                      ])),
              Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 1, right: 16),
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(value: false, onChanged: null)),
                      ),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            Text(
                              'Update Database',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ]))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 1, right: 16),
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(value: false, onChanged: null)),
                      ),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            Text(
                              'make dinner',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 4),
                                child: Text('Fri, May 2',
                                    style: TextStyle(color: Colors.grey[500])))
                          ]))
                    ],
                  )),
            ]))
          ],
        ));
  }
}
