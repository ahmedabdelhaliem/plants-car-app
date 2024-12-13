import 'package:flutter/material.dart';
import 'package:plants/feature/details/widget/custom_circle_paint.dart';

class Shap2 extends StatelessWidget {
  const Shap2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(
        //     top: -100,
        //     bottom: -30,
        //     child: CustomPaint(
        //       size: const Size(400, 400),
        //       painter: CustomCirclePaint(),
        //     )),
        Positioned(
            top: -50,
            bottom: -5,
            left: 13,
            child: CustomPaint(
              size: const Size(300, 300),
              painter: RPSCustomPainter(),
            )),
        Positioned(
            top: -100,
            bottom: -242,
            left: 40,
            child: CustomPaint(
              size: const Size(400, 400),
              painter: CustomCirclePaintSmall(),
            )),
        const Positioned(
            bottom: 20,
            left: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '€ 24.4',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'pack',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                )
              ],
            )),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
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
    path_0.moveTo(size.width * 0.3209060, size.height * 0.9334150);
    path_0.lineTo(size.width * 0.3182413, size.height * 0.9608228);
    path_0.quadraticBezierTo(size.width * 0.4110774, size.height * 0.9504078,
        size.width * 0.5085500, size.height * 0.9643249);
    path_0.cubicTo(
        size.width * 0.5085500,
        size.height * 0.9555544,
        size.width * 0.5056988,
        size.height * 0.9331562,
        size.width * 0.5056988,
        size.height * 0.9243857);
    path_0.quadraticBezierTo(size.width * 0.4088924, size.height * 0.9433275,
        size.width * 0.3209060, size.height * 0.9334150);
    path_0.close();

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
