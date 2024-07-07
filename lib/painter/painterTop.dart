// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

var h, w;

class PainterTop extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    h = size.height;
    w = size.width;
    final brown = Paint()
      ..color = const Color(0xffFF835D)
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    final blue = Paint()
      ..color = const Color(0xff95E8E4).withOpacity(0.9)
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, h * 0.18);
    path.quadraticBezierTo(w * 0.01, h * .21, w * 0.12, h * .22);

    path.quadraticBezierTo(w * 0.37, h * 0.23, w * 0.5, h * 0.15);
    path.quadraticBezierTo(w * 0.58, h * 0.1, w * 0.6, 0);

    path.close();
    canvas.drawPath(path, brown);
    Path path1 = Path();
    path1.moveTo(w, h * 0.15);
    path1.quadraticBezierTo(w * 0.75, h * 0.2, w * 0.58, h * 0.08);
    path1.quadraticBezierTo(w * 0.55, h * 0.05, w * 0.55, 0);

    path1.lineTo(w, 0);
    path1.close();
    canvas.drawPath(path1, blue);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
