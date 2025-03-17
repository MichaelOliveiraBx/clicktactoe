import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

typedef GameStateManagerProvider = ProviderListenable<GameState>;

class GameStateManagerConfiguration {
  final PlayerType player1Configuration;
  final PlayerType player2Configuration;

  const GameStateManagerConfiguration({
    required this.player1Configuration,
    required this.player2Configuration,
  });
}

abstract class GameStateManager
    extends FamilyNotifier<GameState, GameStateManagerConfiguration> {
  void onPointSelected(GamePointCoordinates point);

  void start();

  void stop();
}
