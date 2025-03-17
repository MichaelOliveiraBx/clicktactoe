import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/core/manager/GameStateManager.dart';
import 'package:clicktactoe/modules/game/core/manager/LocalGameStateManager.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/ui/GameTableWidget.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'dart:developer' as developer;

part 'GameScreen.g.dart';

class GameScreenUiState {
  final String message;

  GameScreenUiState({required this.message});
}

@riverpod
class GameScreenUiStateNotifier extends _$GameScreenUiStateNotifier {
  @override
  GameScreenUiState build() {
    final gameState = ref.watch(localGameStateManagerProvider("main"));
    developer.log('BUILD gameState:$gameState', name: 'GameScreenUiStateNotifier');
    final message = switch (gameState) {
      GameStateIdle() => 'Ready',
      GameStatePlaying() => switch (gameState.playerTour) {
        GamePlayer.player1 => 'Player 1 turn',
        GamePlayer.player2 => 'Player 2 turn',
      },
      GameStateWinner() => 'Winner: ${gameState.playerWinner}',
    };

    return GameScreenUiState(message: message);
  }
}

class GameScreen extends ConsumerWidget {
  final GameStateManagerConfiguration configuration;

  const GameScreen({
    super.key,
    this.configuration = const GameStateManagerConfiguration(
      player1Configuration: PlayerTypeLocal(),
      player2Configuration: PlayerTypeLocal(),
    ),
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(gameScreenUiStateNotifierProvider);
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
