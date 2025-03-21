import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/ui/GameScreen.dart';
import 'package:clicktactoe/modules/onboarding/ui/OnboardingScreen.dart';
import 'package:go_router/go_router.dart';

GoRouter mainRoute() => GoRouter(
  initialLocation: "/onboarding",
  routes: [
    GoRoute(
      name: "game",
      path: '/game/:player_1/:player_2',
      builder: (context, state) {
        return GameScreen(
          GameConfiguration.fromNavigationParams(state.pathParameters),
        );
      },
    ),
    GoRoute(
      name: "onboarding",
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
  ],
);
