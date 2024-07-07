// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

var h, w;

class Painter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    h = size.height;
    w = size.width;
    final brown = Paint()
      ..color = const Color(0xffFF835D).withOpacity(0.9)
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    Path path = Path();
    path.moveTo(h * 0.5, w * 0.5);
    path.lineTo(w * 0.7, h);
    path.lineTo(w * 0.2, h);

    path.close();
    canvas.drawPath(path, brown);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
