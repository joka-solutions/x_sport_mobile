import 'package:flutter/material.dart';

class PlayTypesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 0.1)
      ..style = PaintingStyle.fill;

    final double width = size.width;
    final double height = size.height;

    final Path path = Path()
      ..moveTo(22 / 193 * width, 74 / 187.5 * height)
      ..cubicTo(
        22 / 193 * width,
        65.7157 / 187.5 * height,
        28.7157 / 193 * width,
        59 / 187.5 * height,
        37 / 193 * width,
        59 / 187.5 * height,
      )
      ..lineTo(125.5 / 193 * width, 59 / 187.5 * height)
      ..cubicTo(
        133.784 / 193 * width,
        59 / 187.5 * height,
        140.5 / 193 * width,
        52.2843 / 187.5 * height,
        140.5 / 193 * width,
        44 / 187.5 * height,
      )
      ..lineTo(140.5 / 193 * width, 33 / 187.5 * height)
      ..cubicTo(
        140.5 / 193 * width,
        24.7157 / 187.5 * height,
        147.216 / 193 * width,
        18 / 187.5 * height,
        155.5 / 193 * width,
        18 / 187.5 * height,
      )
      ..lineTo(178 / 193 * width, 18 / 187.5 * height)
      ..cubicTo(
        186.284 / 193 * width,
        18 / 187.5 * height,
        193 / 193 * width,
        24.7157 / 187.5 * height,
        193 / 193 * width,
        33 / 187.5 * height,
      )
      ..lineTo(193 / 193 * width, 172.5 / 187.5 * height)
      ..cubicTo(
        193 / 193 * width,
        180.784 / 187.5 * height,
        186.284 / 193 * width,
        187.5 / 187.5 * height,
        178 / 193 * width,
        187.5 / 187.5 * height,
      )
      ..lineTo(37 / 193 * width, 187.5 / 187.5 * height)
      ..cubicTo(
        28.7157 / 193 * width,
        187.5 / 187.5 * height,
        22 / 193 * width,
        180.784 / 187.5 * height,
        22 / 193 * width,
        172.5 / 187.5 * height,
      )
      ..lineTo(22 / 193 * width, 74 / 187.5 * height);

    canvas.drawShadow(path, Colors.black26, 8.0, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
