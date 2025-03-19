import 'dart:developer' as developer;

import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/core/manager/LocalGameStateManager.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableWidget.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'GameScreen.g.dart';

class GameScreenUiState {
  final String message;

  GameScreenUiState({required this.message});
}

@Riverpod()
class GameScreenUiStateNotifier extends _$GameScreenUiStateNotifier {
  @override
  GameScreenUiState build(GameConfiguration configuration) {
    final gameState = ref.watch(localGameStateManagerProvider(configuration));
    developer.log(
      'BUILD gameState:$gameState',
      name: 'GameScreenUiStateNotifier',
    );
    final message = switch (gameState) {
      GameStateIdle() => 'Ready',
      GameStatePlaying() => switch (gameState.playerTour) {
        GamePlayer.player1 => 'Player 1 turn',
        GamePlayer.player2 => 'Player 2 turn',
      },
      GameStateEnded() => 'Winner: ${gameState.playerWinner}',
    };

    return GameScreenUiState(message: message);
  }
}

class GameScreen extends ConsumerWidget {
  final GameConfiguration configuration = const GameConfiguration(
    player1Type: PlayerTypeLocal(),
    player2Type: PlayerTypeAI(),
  );

  const GameScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gameScreenUiStateNotifierProvider(configuration));
    return Scaffold(
      body: Stack(
        children: [
          Center(child: GameTableWidget(configuration: configuration)),
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Text(state.message),
          ),
        ],
      ),
    );
  }
}
