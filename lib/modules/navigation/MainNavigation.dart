
import 'package:clicktactoe/modules/game/ui/GameScreen.dart';
import 'package:go_router/go_router.dart';

GoRouter mainRoute() => GoRouter(
  initialLocation: "/game",
  routes: [
    GoRoute(
      name: "game",
      path: '/game',
      builder: (context, state) => const GameScreen(),
    )
  ],
);