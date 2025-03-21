import 'package:flutter/material.dart';

enum ButtonType { primary, secondary }

extension ButtonTypeExtension on ButtonType {
  Color backgroundColor(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
        return Theme.of(context).colorScheme.onPrimary;
      case ButtonType.secondary:
        return Theme.of(context).colorScheme.primary;
    }
  }

  Color elevationColor(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
        return Theme.of(context).colorScheme.secondary;
      case ButtonType.secondary:
        return Theme.of(context).colorScheme.tertiary;
    }
  }
}
