import 'package:flutter/cupertino.dart';

class CrossFadeSwitcher extends StatelessWidget {
  final Widget child;

  const CrossFadeSwitcher({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      transitionBuilder:
          (widget, animation) =>
              FadeTransition(opacity: animation, child: widget),
      child: child,
    );
  }
}
