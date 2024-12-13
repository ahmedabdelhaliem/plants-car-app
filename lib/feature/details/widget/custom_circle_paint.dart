import 'package:flutter/material.dart';

class CustomCirclePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Circle - الحشوة البيضاء

    Paint paintFill = Paint()
      ..color = Colors.white // تعيين اللون الأبيض
      ..style = PaintingStyle.fill; // استخدام الحشوة بدلاً من الخط

    Paint paintStroke1 = Paint()
      ..color = Colors.white // لون الخط
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1210647, size.height * 0.8390381);
    path_1.cubicTo(
        size.width * 0.1877663,
        size.height * 0.8390381,
        size.width * 0.2878186,
        size.height * 0.8655265,
        size.width * 0.2878186,
        size.height * 0.9336395);
    path_1.cubicTo(
        size.width * 0.2878186,
        size.height * 0.9714801,
        size.width * 0.2377924,
        size.height * 1.0282409,
        size.width * 0.1210647,
        size.height * 1.0282409);
    path_1.cubicTo(
        size.width * 0.0543632,
        size.height * 1.0282409,
        size.width * -0.0456891,
        size.height * 0.9998605,
        size.width * -0.0456891,
        size.height * 0.9336395);
    path_1.cubicTo(
        size.width * -0.0456891,
        size.height * 0.8957990,
        size.width * 0.0043371,
        size.height * 0.8390381,
        size.width * 0.1210647,
        size.height * 0.8390381);
    path_1.close();

    // رسم الحشوة البيضاء
    canvas.drawPath(path_1, paintFill);

    // رسم الخطوط
    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// class CustomPaintExample extends StatelessWidget {
//   const CustomPaintExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Custom Paint Example"),
//       ),
//       body: Center(
//         child: SizedBox(
//           width: 200,
//           height: 200,
//           child: CustomPaint(
//             painter: CustomCirclePaint(),
//           ),
//         ),
//       ),
//     );
//   }
// }

class LLPSCustomPainter extends CustomPainter {
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
    path_0.moveTo(size.width * 0.1548250, size.height * 0.9051557);
    path_0.quadraticBezierTo(size.width * 0.2229340, size.height * 0.8920569,
        size.width * 0.2917553, size.height * 0.8435960);
    path_0.cubicTo(
        size.width * 0.3077933,
        size.height * 0.8593326,
        size.width * 0.3116182,
        size.height * 0.8694469,
        size.width * 0.3394738,
        size.height * 0.8777372);
    path_0.quadraticBezierTo(size.width * 0.2297133, size.height * 0.8973175,
        size.width * 0.1769037, size.height * 0.9254143);
    path_0.lineTo(size.width * 0.1548250, size.height * 0.9051557);
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

class CustomCirclePaintSmall extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Second Circle Fill - الدائرة الصغيرة فقط
    Paint fillPaint1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3560500, size.height * 0.7083333);
    path_1.cubicTo(
        size.width * 0.3784750,
        size.height * 0.7083333,
        size.width * 0.4121000,
        size.height * 0.7150000,
        size.width * 0.4121000,
        size.height * 0.7321771);
    path_1.cubicTo(
        size.width * 0.4121000,
        size.height * 0.7417083,
        size.width * 0.3953000,
        size.height * 0.7560104,
        size.width * 0.3560500,
        size.height * 0.7560104);
    path_1.cubicTo(
        size.width * 0.3336500,
        size.height * 0.7560104,
        size.width * 0.3000000,
        size.height * 0.7488542,
        size.width * 0.3000000,
        size.height * 0.7321771);
    path_1.cubicTo(
        size.width * 0.3000000,
        size.height * 0.7226354,
        size.width * 0.3168250,
        size.height * 0.7083333,
        size.width * 0.3560500,
        size.height * 0.7083333);
    path_1.close();

    canvas.drawPath(path_1, fillPaint1);

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Circle

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(255, 137, 147, 143)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1660250, size.height * 0.7493143);
    path_1.cubicTo(
        size.width * 0.2797000,
        size.height * 0.7493143,
        size.width * 0.4501750,
        size.height * 0.7922000,
        size.width * 0.4501750,
        size.height * 0.9025571);
    path_1.cubicTo(
        size.width * 0.4501750,
        size.height * 0.9638429,
        size.width * 0.3649500,
        size.height * 1.0557857,
        size.width * 0.1660250,
        size.height * 1.0557857);
    path_1.cubicTo(
        size.width * 0.0523500,
        size.height * 1.0557857,
        size.width * -0.1181500,
        size.height * 1.0098143,
        size.width * -0.1181500,
        size.height * 0.9025571);
    path_1.cubicTo(
        size.width * -0.1181500,
        size.height * 0.8412571,
        size.width * -0.0328750,
        size.height * 0.7493143,
        size.width * 0.1660250,
        size.height * 0.7493143);
    path_1.close();

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
