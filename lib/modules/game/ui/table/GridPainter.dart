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
    final firstPartAnimateValue = animateValue < 0.5 ? animateValue * 2 : 1;
    final secondPartAnimateValue =
        animateValue > 0.5 ? (animateValue - 0.5) * 2 : 0;

    canvas.drawLine(
      Offset(size.width / 3, 0),
      Offset(size.width / 3, size.height * firstPartAnimateValue),
      paint,
    );

    canvas.drawLine(
      Offset(
        size.width * 2 / 3,
        size.height - size.height * firstPartAnimateValue,
      ),
      Offset(size.width * 2 / 3, size.height),
      paint,
    );

    canvas.drawLine(
      Offset(size.width - size.width * secondPartAnimateValue, size.height / 3),
      Offset(size.width, size.height / 3),
      paint,
    );

    canvas.drawLine(
      Offset(0, size.height * 2 / 3),
      Offset(size.width * secondPartAnimateValue, size.height * 2 / 3),
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
