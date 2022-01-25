import 'package:ebank/constant.dart';
import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = kBlueColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.8737500, size.height * 0.8960000);
    path0.quadraticBezierTo(size.width * 0.9277500, size.height * 0.8934200,
        size.width * 0.9375000, size.height * 0.7960000);
    path0.lineTo(size.width * 0.9375000, size.height * 0.7960000);
    path0.lineTo(size.width * 0.8601750, size.height * 0.2412200);
    path0.quadraticBezierTo(size.width * 0.8459625, size.height * 0.1067200,
        size.width * 0.7520750, size.height * 0.0999200);
    path0.cubicTo(
        size.width * 0.5658250,
        size.height * 0.0984200,
        size.width * 0.3311375,
        size.height * 0.0999800,
        size.width * 0.1900000,
        size.height * 0.1000000);
    path0.quadraticBezierTo(size.width * 0.1381250, size.height * 0.1035000,
        size.width * 0.1312500, size.height * 0.2500000);
    path0.lineTo(size.width * 0.0612500, size.height * 0.7940000);
    path0.quadraticBezierTo(size.width * 0.0696875, size.height * 0.8920000,
        size.width * 0.1250000, size.height * 0.8900000);
    path0.cubicTo(
        size.width * 0.3121875,
        size.height * 0.8915000,
        size.width * 0.3121875,
        size.height * 0.8915000,
        size.width * 0.8737500,
        size.height * 0.8960000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
