import 'dart:developer' as developer;

import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/onboarding/domain/ClickTacToeOnboardingConfiguration.dart';
import 'package:clicktactoe/modules/onboarding/domain/OnboardingConfiguration.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'OnboardingStateHandler.g.dart';

part 'OnboardingStateHandler.freezed.dart';

@freezed
sealed class OnboardingStateHandlerAction with _$OnboardingStateHandlerAction {
  const factory OnboardingStateHandlerAction.startGame({
    required GameConfiguration configuration,
  }) = OnboardingStateHandlerActionStartGame;
}

@freezed
abstract class OnboardingStateHandlerUiState
    with _$OnboardingStateHandlerUiState {
  factory OnboardingStateHandlerUiState({
    required OnboardingStepConfiguration step,
    required bool displayBackButton,
  }) = _OnboardingStateHandlerUiState;
}

@riverpod
class OnboardingStateHandler extends _$OnboardingStateHandler {
  @override
  OnboardingStateHandlerUiState build() {
    return OnboardingStateHandlerUiState(
      step: ref.read(getClickTacToeOnboardingConfigurationProvider).first,
      displayBackButton: false,
    );
  }

  void previous() {
    final steps = ref.read(getClickTacToeOnboardingConfigurationProvider);
    final currentIndex = steps.indexOf(state.step);
    if (currentIndex > 0) {
      state = state.copyWith(
        step: steps[currentIndex - 1],
        displayBackButton: currentIndex > 1,
      );
    }
  }

  OnboardingStateHandlerAction? next(OnboardingButtonConfiguration button) {
    switch (button.action) {
      case OnboardingButtonActionNextStep():
        {
          final steps = ref.read(getClickTacToeOnboardingConfigurationProvider);
          final currentIndex = steps.indexOf(state.step);
          if (currentIndex < steps.length - 1) {
            state = state.copyWith(
              step: steps[currentIndex + 1],
              displayBackButton: true,
            );
          }
          break;
        }
      case OnboardingButtonActionStartGame(configuration: final configuration):
        {
          return OnboardingStateHandlerAction.startGame(
            configuration: configuration,
          );
        }
      case OnboardingButtonActionNone():
        {
          break;
        }
    }
    return null;
  }
}
