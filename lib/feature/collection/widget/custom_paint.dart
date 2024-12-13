import 'package:flutter/material.dart';

class HPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 145, 212, 137)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9970547, size.height * 0.3845386);
    path_0.cubicTo(
        size.width * 0.9851630,
        size.height * 0.3965417,
        size.width * 0.9806131,
        size.height * 0.4019822,
        size.width * 0.9221883,
        size.height * 0.3996360);
    path_0.cubicTo(
        size.width * 0.8781371,
        size.height * 0.3983439,
        size.width * 0.7933436,
        size.height * 0.3919513,
        size.width * 0.7939641,
        size.height * 0.4178617);
    path_0.cubicTo(
        size.width * 0.7988242,
        size.height * 0.4426841,
        size.width * 0.8780337,
        size.height * 0.4373796,
        size.width * 0.9226019,
        size.height * 0.4371756);
    path_0.cubicTo(
        size.width * 0.9488672,
        size.height * 0.4371756,
        size.width * 0.9898163,
        size.height * 0.4415280,
        size.width * 1.0045000,
        size.height * 0.4545852);
    path_0.cubicTo(
        size.width * 1.0026387,
        size.height * 0.4377536,
        size.width * 1.0026387,
        size.height * 0.4350334,
        size.width * 0.9970547,
        size.height * 0.3845386);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 145, 212, 137)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
