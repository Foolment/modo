import 'package:Modo/widget/line.dart';
import 'package:flutter/material.dart';

class TodoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      _todoProgressView(),
      _progressSeparatorView(),
      Expanded(child: _todoListView(context))
    ]);
  }

  Widget _todoProgressView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(right: 16),
            child: Image.asset('assets/images/ic_task_progress.png',
                width: 20, height: 20)),
        Text('2 of 7 tasks',
            style: TextStyle(color: Colors.grey[500], fontSize: 16))
      ],
    );
  }

  Widget _progressSeparatorView() {
    return Container(
        margin: const EdgeInsets.only(left: 36),
        height: 36,
        child: Row(
          children: <Widget>[
            Expanded(
                child: CustomPaint(
                    painter:
                        LinePainter(strokeWidth: 1.5, color: Colors.grey[350])))
          ],
        ));
  }

  Widget _todoListView(BuildContext context) {
    return MediaQuery.removePadding(
        removeTop: true,
        removeBottom: true,
        context: context,
        child: ListView(children: <Widget>[
          Container(
              margin: const EdgeInsets.only(bottom: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 4, right: 16),
                    child: SizedBox(
                        width: 20,
                        height: 20,
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
                      ])),
                  Container(
                      margin: const EdgeInsets.only(right: 32),
                      child: Icon(Icons.close))
                ],
              )),
          Container(
              margin: const EdgeInsets.only(bottom: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 4, right: 16),
                    child: SizedBox(
                        width: 20,
                        height: 20,
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
              margin: const EdgeInsets.only(left: 36, bottom: 24),
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
              margin: const EdgeInsets.only(left: 36, bottom: 24),
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
        ]));
  }
}
