import 'package:flutter/material.dart';

class SelectableButtonPainter extends CustomPainter {
  final Color backgroundColor;
  final Color elevationColor;
  final double borderRadius;
  final Color borderColorSelected;
  final bool isSelected;
  final double elevation;

  SelectableButtonPainter({
    required this.backgroundColor,
    required this.elevationColor,
    this.borderRadius = 8.0,
    this.borderColorSelected = Colors.blue,
    this.isSelected = false,
    this.elevation = 3.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = isSelected ? borderColorSelected : elevationColor
          ..strokeWidth = 1
          ..style = PaintingStyle.fill;

    Path pathBackground =
        Path()..addRRect(
          RRect.fromRectAndRadius(
            Rect.fromLTWH(0, 0, size.width, size.height),
            Radius.circular(borderRadius),
          ),
        );

    Path pathElevation =
        Path()..addRRect(
          RRect.fromRectAndRadius(
            Rect.fromLTWH(0, elevation, size.width, size.height + elevation),
            Radius.circular(borderRadius),
          ),
        );

    canvas.drawPath(pathElevation, paint);

    paint.color = backgroundColor;
    canvas.drawPath(pathBackground, paint);

    paint.color = isSelected ? borderColorSelected : elevationColor;
    paint.style = PaintingStyle.stroke;

    if (isSelected) {
      Path pathBorder =
          Path()..addRRect(
            RRect.fromRectAndRadius(
              Rect.fromLTWH(0, 0, size.width, size.height),
              Radius.circular(borderRadius),
            ),
          );
      canvas.drawPath(pathBorder, paint);
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SelectableButtonPainter &&
          runtimeType == other.runtimeType &&
          backgroundColor == other.backgroundColor &&
          elevationColor == other.elevationColor &&
          borderRadius == other.borderRadius &&
          borderColorSelected == other.borderColorSelected &&
          isSelected == other.isSelected &&
          elevation == other.elevation);

  @override
  int get hashCode =>
      backgroundColor.hashCode ^
      elevationColor.hashCode ^
      borderRadius.hashCode ^
      borderColorSelected.hashCode ^
      isSelected.hashCode ^
      elevation.hashCode;

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
