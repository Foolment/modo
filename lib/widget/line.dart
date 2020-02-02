import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  Paint _paint;

  LinePainter({color: Colors.black, strokeWidth = 1.0}) {
    _paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    print('size.width=${size.width},size.height=${size.height}');
    Path path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
