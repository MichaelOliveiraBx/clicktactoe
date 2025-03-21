import 'dart:developer' as developer;
import 'dart:ui';

import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  final Color color;
  final double animateValue;

  GridPainter({required this.color, this.animateValue = 1.0});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = color
          ..strokeWidth = 8
          ..style = PaintingStyle.fill;

    canvas.drawLine(
      Offset(size.width / 3, 0),
      Offset(size.width / 3, size.height * animateValue),
      paint,
    );

    canvas.drawLine(
      Offset(size.width * 2 / 3,0),
      Offset(size.width * 2 / 3, size.height * animateValue),
      paint,
    );

    canvas.drawLine(
      Offset(0, size.height / 3),
      Offset(size.width* animateValue, size.height / 3),
      paint,
    );

    canvas.drawLine(
      Offset(0, size.height * 2 / 3),
      Offset(size.width* animateValue, size.height * 2 / 3),
      paint,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GridPainter &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          animateValue == other.animateValue;

  @override
  int get hashCode => color.hashCode ^ animateValue.hashCode;

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
