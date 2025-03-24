import 'package:clicktactoe/modules/design/buttons/ButtonType.dart';
import 'package:clicktactoe/modules/design/buttons/ClickableButton.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final Function() onClick;
  final ButtonType type;
  final String title;
  final String? subtitle;
  final bool enable;
  final IconData icon;

  const OnboardingButton({
    super.key,
    required this.onClick,
    required this.title,
    this.type = ButtonType.primary,
    this.enable = true,
    this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ClickableButton(
      onClick: onClick,
      enable: enable,
      type: type,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(
                icon,
                color: Theme.of(context).colorScheme.secondary,
                size: 36,
              ),
              SizedBox(width: 12),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleLarge),
                    Text(
                      subtitle ?? '',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
