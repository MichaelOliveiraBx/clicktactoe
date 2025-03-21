
import 'package:clicktactoe/modules/game/ui/GameScreen.dart';
import 'package:clicktactoe/modules/onboarding/ui/OnboardingScreen.dart';
import 'package:go_router/go_router.dart';

GoRouter mainRoute() => GoRouter(
  initialLocation: "/onboarding",
  routes: [
    GoRoute(
      name: "game",
      path: '/game',
      builder: (context, state) => const GameScreen(),
    ),
    GoRoute(
      name: "onboarding",
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
  ],
);