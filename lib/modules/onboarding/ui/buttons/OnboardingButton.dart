import 'package:clicktactoe/modules/design/buttons/ButtonType.dart';
import 'package:clicktactoe/modules/design/buttons/ClickableButton.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final Function() onClick;
  final ButtonType type;
  final String title;
  final bool enable;

  const OnboardingButton({
    super.key,
    required this.onClick,
    required this.title,
    this.type = ButtonType.primary,
    this.enable = true,
  });

  @override
  Widget build(BuildContext context) {
    return ClickableButton(
      onClick: onClick,
      enable: enable,
      type: type,
      child: Text(title, style: Theme.of(context).textTheme.titleLarge),
    );
  }
}
