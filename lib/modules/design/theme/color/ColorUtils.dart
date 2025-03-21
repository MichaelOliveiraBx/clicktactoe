import 'package:flutter/material.dart';

extension ColorUtils on Color {
  Color changeColorLightness(double coeff) =>
      HSLColor.fromColor(
        this,
      ).withLightness((computeLuminance() * coeff).clamp(0, 1)).toColor();
}
