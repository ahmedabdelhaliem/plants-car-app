import 'package:flutter/material.dart';
import 'package:plants/feature/details/widget/custom_circle_paint.dart';

class Shap3 extends StatelessWidget {
  const Shap3({super.key});

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
            bottom: -80,
            left: -25,
            child: CustomPaint(
              size: const Size(320, 300),
              painter: RPSCustomPainter(),
            )),
        Positioned(
            top: -100,
            bottom: -55,
            left: -60,
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
    path_0.moveTo(size.width * 0.2698250, size.height * 0.8270286);
    path_0.lineTo(size.width * 0.3271250, size.height * 0.8348571);
    path_0.quadraticBezierTo(size.width * 0.3249750, size.height * 0.7709571,
        size.width * 0.3751750, size.height * 0.7093714);
    path_0.cubicTo(
        size.width * 0.3566750,
        size.height * 0.7074429,
        size.width * 0.3087750,
        size.height * 0.7043571,
        size.width * 0.2902500,
        size.height * 0.7024000);
    path_0.quadraticBezierTo(size.width * 0.3095750, size.height * 0.7708286,
        size.width * 0.2698250, size.height * 0.8270286);
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
