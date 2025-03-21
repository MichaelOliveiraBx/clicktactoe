import 'package:clicktactoe/modules/onboarding/domain/OnboardingConfiguration.dart';
import 'package:clicktactoe/modules/onboarding/ui/OnboardingConfigurationLocalize.dart';
import 'package:clicktactoe/modules/onboarding/ui/buttons/OnboardingButton.dart';
import 'package:flutter/cupertino.dart';

class OnboardingStepWidget extends StatelessWidget {
  final OnboardingStepConfiguration step;
  final String? titleHeroKey;
  final Function(OnboardingButtonConfiguration) onButtonClick;

  const OnboardingStepWidget({
    super.key,
    required this.step,
    this.titleHeroKey,
    required this.onButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    final titleText = Text(
      step.step.title(context),
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        titleHeroKey != null
            ? Hero(tag: titleHeroKey!, child: titleText)
            : titleText,
        const SizedBox(height: 30),
        ...step.buttons.map((button) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              height: 80,
              child: OnboardingButton(
                onClick: () => onButtonClick(button),
                title: button.type.title(context),
                enable: button.isEnabled,
              ),
            ),
          );
        }),
      ],
    );
  }
}
