import 'dart:math';

import 'package:flutter/material.dart';

class PointWidget extends StatefulWidget {
  final bool isPlayer1;
  final bool withAnimation;

  const PointWidget({
    super.key,
    required this.isPlayer1,
    this.withAnimation = true,
  });

  @override
  _PointWidgetState createState() => _PointWidgetState();
}

class _PointWidgetState extends State<PointWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animationController?.forward();
    _animationController?.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _getPainter());
  }

  CustomPainter _getPainter() {
    if (widget.isPlayer1) {
      return PointCrossPainter(
        color: Theme.of(context).primaryColor,
        animateValue: _animationController?.value ?? 1.0,
      );
    } else {
      return CircleCrossPainter(
        color: Theme.of(context).colorScheme.secondary,
        animateValue: _animationController?.value ?? 1.0,
      );
    }
  }
}

class PointCrossPainter extends CustomPainter {
  final double animateValue;
  final Color color;

  PointCrossPainter({required this.color, this.animateValue = 1.0});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = color
          ..strokeWidth = 8
          ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width,
        height: size.height,
      ),
      0,
      2 * pi * animateValue,
      false,
      paint,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PointCrossPainter &&
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

class CircleCrossPainter extends CustomPainter {
  final double animateValue;
  final Color color;

  CircleCrossPainter({required this.color, this.animateValue = 1.0});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = color
          ..strokeWidth = 8
          ..style = PaintingStyle.fill;

    canvas.drawLine(
      Offset(0, 0),
      Offset(
        size.width * (animateValue * 2).clamp(0, 1),
        size.height * (animateValue * 2).clamp(0, 1),
      ),
      paint,
    );

    final animateValue2 = ((animateValue - 0.5) * 2).clamp(0, 1);
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width * animateValue2, 0),
      paint,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CircleCrossPainter &&
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
