import 'package:clicktactoe/modules/design/theme/color/ColorUtils.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;

  const AppScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final lightBackgroundColor = backgroundColor.changeColorLightness(1.2);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              lightBackgroundColor,
              backgroundColor,
              lightBackgroundColor,
            ],
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(child: child),
      ),
    );
  }
}
