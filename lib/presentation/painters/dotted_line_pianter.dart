import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xFFD0D0D0) // Color of the dotted line
      ..strokeWidth = 0.5 // Thickness of the dotted line
      ..strokeCap = StrokeCap.round;

    double dashWidth = 10.0; // Width of each dash
    double dashSpace = 5.0; // Space between each dash

    double startX = 0.0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
