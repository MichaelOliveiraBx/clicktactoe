import 'dart:developer' as developer;

import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/core/manager/LocalGameStateManager.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'GameScreenUiStateNotifier.g.dart';

part 'GameScreenUiStateNotifier.freezed.dart';

enum EndedGameType { draw, player1, player2 }

enum EndedTurnType { none, player1, player2 }

@freezed
abstract class GameScreenEndedUiState with _$GameScreenEndedUiState {
  factory GameScreenEndedUiState({required EndedGameType type}) =
      _GameScreenEndedUiState;
}

@freezed
abstract class GameScreenUiState with _$GameScreenUiState {
  factory GameScreenUiState({
    required EndedTurnType status,
    required int player1Score,
    required int player2Score,
    GameScreenEndedUiState? endedUiState,
  }) = _GameScreenUiState;
}

@Riverpod()
class GameScreenUiStateNotifier extends _$GameScreenUiStateNotifier {
  int _player1Score = 0;
  int _player2Score = 0;
  GameConfiguration? _configuration;

  @override
  Future<GameScreenUiState> build(GameConfiguration configuration) async {
    _configuration = configuration;

    final gameState = ref.watch(localGameStateManagerProvider(configuration));
    final EndedTurnType status;
    final GameScreenEndedUiState? endedUiState;
    switch (gameState) {
      case GameStateIdle():
        {
          status = EndedTurnType.none;
          endedUiState = null;
        }
      case GameStatePlaying():
        {
          if (gameState.playerTour == GamePlayer.player1) {
            status = EndedTurnType.player1;
          } else {
            status = EndedTurnType.player2;
          }
          endedUiState = null;
        }
      case GameStateEnded():
        {
          await Future.delayed(const Duration(milliseconds: 500));
          status = EndedTurnType.none;
          final EndedGameType type;
          switch (gameState.playerWinner) {
            case null:
              type = EndedGameType.draw;
            case GamePlayer.player1:
              {
                _player1Score++;
                type = EndedGameType.player1;
              }
            case GamePlayer.player2:
              {
                _player2Score++;
                type = EndedGameType.player2;
              }
          }
          endedUiState = GameScreenEndedUiState(type: type);
        }
    }

    return Future.value(
      GameScreenUiState(
        status: status,
        endedUiState: endedUiState,
        player1Score: _player1Score,
        player2Score: _player2Score,
      ),
    );
  }

  void restart() {
    final configuration = _configuration;
    if (configuration == null) {
      developer.log(
        'restart Configuration is null',
        name: 'GameTableUiStateNotifier',
        error: 'Configuration must not be null',
      );
      return;
    }

    ref.read(localGameStateManagerProvider(configuration).notifier).start();
  }
}
