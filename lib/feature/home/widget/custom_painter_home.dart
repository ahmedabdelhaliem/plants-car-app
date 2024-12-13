import 'package:flutter/material.dart';

class CustomPainterHome extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9950000, size.height * 0.0318841);
    path_0.quadraticBezierTo(size.width * 0.9984250, size.height * 0.4616957,
        size.width * 0.9986750, size.height * 0.5770435);
    path_0.cubicTo(
        size.width * 0.7811000,
        size.height * 0.7543043,
        size.width * 0.7691750,
        size.height * 0.7582174,
        size.width * 0.5000000,
        size.height * 0.8037895);
    path_0.cubicTo(
        size.width * 0.2344250,
        size.height * 0.7605652,
        size.width * 0.2177250,
        size.height * 0.7556957,
        size.width * 0.0023250,
        size.height * 0.5677536);
    path_0.quadraticBezierTo(size.width * 0.0017000, size.height * 0.4535652,
        size.width * 0.0025000, size.height * 0.0335498);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color(0xff90D388)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3331250, size.height * 0.8052029);
    path_0.cubicTo(
        size.width * 0.3011250,
        size.height * 0.8988986,
        size.width * 0.2766000,
        size.height * 0.9090000,
        size.width * 0.3388500,
        size.height * 0.9309565);
    path_0.cubicTo(
        size.width * 0.3882750,
        size.height * 0.9475797,
        size.width * 0.3957000,
        size.height * 0.9314928,
        size.width * 0.4965000,
        size.height * 0.9263768);
    path_0.cubicTo(
        size.width * 0.5953500,
        size.height * 0.9304493,
        size.width * 0.6268250,
        size.height * 0.9497246,
        size.width * 0.6616250,
        size.height * 0.9320725);
    path_0.cubicTo(
        size.width * 0.7144750,
        size.height * 0.9040000,
        size.width * 0.6872500,
        size.height * 0.8845072,
        size.width * 0.6545000,
        size.height * 0.8052174);
    path_0.cubicTo(
        size.width * 0.5994500,
        size.height * 0.8211014,
        size.width * 0.5515500,
        size.height * 0.8141884,
        size.width * 0.4904750,
        size.height * 0.8191304);
    path_0.cubicTo(
        size.width * 0.4238250,
        size.height * 0.8153333,
        size.width * 0.3714500,
        size.height * 0.8167826,
        size.width * 0.3331250,
        size.height * 0.8052029);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color(0xff90D388)
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

class PPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9975000, size.height * 0.5797101);
    path_0.quadraticBezierTo(size.width * 0.9834500, size.height * 0.6127391,
        size.width * 0.9707500, size.height * 0.6196087);
    path_0.cubicTo(
        size.width * 0.9373000,
        size.height * 0.6427101,
        size.width * 0.8136250,
        size.height * 0.6629275,
        size.width * 0.8129500,
        size.height * 0.6995942);
    path_0.cubicTo(
        size.width * 0.8136250,
        size.height * 0.7380145,
        size.width * 0.9212750,
        size.height * 0.7462174,
        size.width * 0.9627250,
        size.height * 0.7633043);
    path_0.quadraticBezierTo(size.width * 0.9868000, size.height * 0.7780870,
        size.width * 1.0001750, size.height * 0.7960290);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
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

class LPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0024750, size.height);
    path_0.quadraticBezierTo(size.width * 0.0155750, size.height * 0.9668551,
        size.width * 0.0274250, size.height * 0.9599565);
    path_0.cubicTo(
        size.width * 0.0586500,
        size.height * 0.9367681,
        size.width * 0.1740250,
        size.height * 0.9164783,
        size.width * 0.1746500,
        size.height * 0.8796667);
    path_0.cubicTo(
        size.width * 0.1740250,
        size.height * 0.8411014,
        size.width * 0.0736000,
        size.height * 0.8328696,
        size.width * 0.0349250,
        size.height * 0.8157246);
    path_0.quadraticBezierTo(size.width * 0.0124500, size.height * 0.8008841,
        size.width * -0.0000250, size.height * 0.7828696);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
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

class BPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 147, 209, 139)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2849500, size.height * 0.9985507);
    path_0.quadraticBezierTo(size.width * 0.3357750, size.height * 0.9978406,
        size.width * 0.3616250, size.height * 0.9831449);
    path_0.cubicTo(
        size.width * 0.3976000,
        size.height * 0.9687971,
        size.width * 0.4180500,
        size.height * 0.9273623,
        size.width * 0.4975000,
        size.height * 0.9195797);
    path_0.cubicTo(
        size.width * 0.5675750,
        size.height * 0.9215217,
        size.width * 0.5786750,
        size.height * 0.9671884,
        size.width * 0.6253500,
        size.height * 0.9830435);
    path_0.quadraticBezierTo(size.width * 0.6605500, size.height * 0.9989710,
        size.width * 0.7047000, size.height * 0.9986522);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 147, 209, 139)
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
