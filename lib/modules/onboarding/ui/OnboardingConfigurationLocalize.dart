

import 'package:clicktactoe/modules/onboarding/domain/OnboardingConfiguration.dart';
import 'package:clicktactoe/modules/sdk/extensions/localization/LocalizationExtension.dart';
import 'package:flutter/cupertino.dart';

extension OnboardingStepsLocalize on OnboardingSteps {
  String title(BuildContext context) => switch (this) {
    OnboardingSteps.localOrRemote => context.l10n.onboardingStepLocalOrRemoteTitle,
    OnboardingSteps.selectLocalVersus =>  context.l10n.onboardingStepSelectLocalVersusTitle,
  };
}


extension OnboardingButtonTypeLocalize on OnboardingButtonType {
  String title(BuildContext context) => switch (this) {
    OnboardingButtonType.local => context.l10n.onboardingButtonLocal,
    OnboardingButtonType.remote => context.l10n.onboardingButtonRemote,
    OnboardingButtonType.local2players => context.l10n.onboardingButton2Players,
    OnboardingButtonType.localVersusAI => context.l10n.onboardingButtonVsAI,
  };
}

