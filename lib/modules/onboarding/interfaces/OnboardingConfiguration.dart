import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'OnboardingConfiguration.freezed.dart';

typedef OnboardingConfiguration = List<OnboardingStepConfiguration>;

enum OnboardingSteps { localOrRemote, selectLocalVersus }

enum OnboardingButtonType { local, remote, local2players, localVersusAI }

@freezed
sealed class OnboardingButtonAction with _$OnboardingButtonAction {
  const factory OnboardingButtonAction.nextStep({
    required OnboardingSteps nextStep,
  }) = OnboardingButtonActionNextStep;

  const factory OnboardingButtonAction.startGame({
    required GameConfiguration configuration,
  }) = OnboardingButtonActionStartGame;

  const factory OnboardingButtonAction.none() = OnboardingButtonActionNone;
}

@freezed
abstract class OnboardingStepConfiguration  with _$OnboardingStepConfiguration {
  const factory OnboardingStepConfiguration({
    required OnboardingSteps step,
    required List<OnboardingButtonConfiguration> buttons,
  }) = _OnboardingStepConfiguration;
}

@freezed
abstract class OnboardingButtonConfiguration
    with _$OnboardingButtonConfiguration {
  const factory OnboardingButtonConfiguration({
    required OnboardingButtonType type,
    required OnboardingButtonAction action,
    @Default(true) bool isEnabled,
  }) = _OnboardingButtonConfiguration;
}
