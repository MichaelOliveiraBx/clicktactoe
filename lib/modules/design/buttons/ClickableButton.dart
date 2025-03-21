import 'package:clicktactoe/modules/design/buttons/ButtonType.dart';
import 'package:clicktactoe/modules/design/buttons/SelectableButtonPainter.dart';
import 'package:flutter/material.dart';

class ClickableButton extends StatelessWidget {
  final Function() onClick;
  final Widget child;
  final double borderRadius;
  final ButtonType type;
  final bool enable;

  const ClickableButton({
    super.key,
    required this.onClick,
    required this.child,
    this.borderRadius = 16.0,
    this.type = ButtonType.primary,
    this.enable = true,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enable ? 1.0 : 0.5,
      child: CustomPaint(
        painter: SelectableButtonPainter(
          elevation: 2.0,
          backgroundColor: type.backgroundColor(context),
          elevationColor: type.elevationColor(context),
          borderRadius: borderRadius,
          isSelected: false,
        ),
        child:
            enable
                ? Material(
                  color: Colors.transparent,
                  child: Ink(
                    decoration: null,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(borderRadius),
                      // Keep rounded corners for ripple effect
                      onTap: () {
                        onClick();
                      },
                      child: Center(child: child),
                    ),
                  ),
                )
                : Center(child: child),
      ),
    );
  }
}
