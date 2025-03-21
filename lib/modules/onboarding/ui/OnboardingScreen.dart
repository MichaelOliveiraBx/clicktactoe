import 'dart:developer' as developer;

import 'package:clicktactoe/modules/design/AppScafold.dart';
import 'package:clicktactoe/modules/design/CrossFadeSwitcher.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/onboarding/ui/OnboardingStateHandler.dart';
import 'package:clicktactoe/modules/onboarding/ui/OnboardingStepWidget.dart';
import 'package:clicktactoe/modules/sdk/extensions/localization/LocalizationExtension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingStateHandlerProvider);

    final currentStepWidget = OnboardingStepWidget(
      key: ValueKey(state.step),
      step: state.step,
      onButtonClick: (button) {
        final action = ref
            .read(onboardingStateHandlerProvider.notifier)
            .next(button);
        switch (action) {
          case OnboardingStateHandlerActionStartGame(
            configuration: final configuration,
          ):
            {
              final navigationParam = configuration.navigationParams;
              context.pushNamed("game", pathParameters: navigationParam);
              break;
            }
          default:
            {
              break;
            }
        }
      },
    );

    return AppScaffold(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: AnimatedOpacity(
              opacity: state.displayBackButton ? 1 : 0,
              duration: Duration(milliseconds: 500),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  ref.read(onboardingStateHandlerProvider.notifier).previous();
                },
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Text(
              context.l10n.appName,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 200,
            right: 32,
            left: 32,
            bottom: 0,
            child: CrossFadeSwitcher(child: currentStepWidget),
          ),
        ],
      ),
    );
  }
}
