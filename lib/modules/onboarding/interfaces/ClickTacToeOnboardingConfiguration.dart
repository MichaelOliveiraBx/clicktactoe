import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'OnboardingConfiguration.dart';

part 'ClickTacToeOnboardingConfiguration.g.dart';

@riverpod
OnboardingConfiguration getClickTacToeOnboardingConfiguration(Ref ref) {
  return [
    OnboardingStepConfiguration(
      step: OnboardingSteps.localOrRemote,
      buttons: [
        OnboardingButtonConfiguration(
          type: OnboardingButtonType.local,
          action: OnboardingButtonAction.nextStep(
            nextStep: OnboardingSteps.selectLocalVersus,
          ),
        ),
        OnboardingButtonConfiguration(
          type: OnboardingButtonType.remote,
          isEnabled: false,
          action: OnboardingButtonAction.none(),
        ),
      ],
    ),
    OnboardingStepConfiguration(
      step: OnboardingSteps.selectLocalVersus,
      buttons: [
        OnboardingButtonConfiguration(
          type: OnboardingButtonType.local2players,
          action: OnboardingButtonAction.startGame(
            configuration: GameConfiguration(
              player1Type: PlayerType.local(),
              player2Type: PlayerType.local(),
            ),
          ),
        ),
        OnboardingButtonConfiguration(
          type: OnboardingButtonType.localVersusAI,
          action: OnboardingButtonAction.startGame(
            configuration: GameConfiguration(
              player1Type: PlayerType.local(),
              player2Type: PlayerType.ai(),
            ),
          ),
        ),
      ],
    ),
  ];
}
