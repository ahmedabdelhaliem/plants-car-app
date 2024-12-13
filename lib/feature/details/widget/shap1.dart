import 'package:flutter/material.dart';
import 'package:plants/feature/details/widget/custom_circle_paint.dart';

class Shap1 extends StatelessWidget {
  const Shap1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: -100,
            bottom: -30,
            child: CustomPaint(
              size: const Size(400, 400),
              painter: CustomCirclePaint(),
            )),
        Positioned(
            top: -50,
            bottom: -35,
            left: 2,
            child: CustomPaint(
              size: const Size(300, 300),
              painter: RPSCustomPainter(),
            )),
        Positioned(
            top: -100,
            bottom: -125,
            left: 15,
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
    path_0.moveTo(size.width * 0.3096864, size.height * 0.8543258);
    path_0.lineTo(size.width * 0.3386835, size.height * 0.8836294);
    path_0.quadraticBezierTo(size.width * 0.4190717, size.height * 0.8392005,
        size.width * 0.5321626, size.height * 0.8182378);
    path_0.cubicTo(
        size.width * 0.5220414,
        size.height * 0.8091795,
        size.width * 0.4933447,
        size.height * 0.7870395,
        size.width * 0.4832266,
        size.height * 0.7779661);
    path_0.quadraticBezierTo(size.width * 0.4087330, size.height * 0.8326666,
        size.width * 0.3096864, size.height * 0.8543258);
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
