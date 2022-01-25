import 'package:flutter/material.dart';

class LittleRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color(0xfff4f6f8)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0400000, size.height * 0.8035000);
    path0.quadraticBezierTo(size.width * 0.0326750, size.height * 1.0106000,
        size.width * 0.0644625, size.height);
    path0.quadraticBezierTo(size.width * 0.2827219, size.height * 0.9975000,
        size.width * 0.9362625, size.height);
    path0.quadraticBezierTo(size.width * 0.9701125, size.height * 1.0334000,
        size.width * 0.9635500, size.height * 0.8017000);
    path0.quadraticBezierTo(size.width * 0.9500875, size.height * 0.1151000,
        size.width * 0.9137500, size.height * 0.0800000);
    path0.quadraticBezierTo(size.width * 0.3031250, size.height * 0.0925000,
        size.width * 0.0943750, size.height * 0.1000000);
    path0.quadraticBezierTo(size.width * 0.0667875, size.height * 0.0934000,
        size.width * 0.0400000, size.height * 0.8035000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
