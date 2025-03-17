import 'dart:async';

import 'package:async/async.dart';
import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/core/manager/GameStateManager.dart';
import 'package:clicktactoe/modules/game/core/usecase/GetPlayerWinnerUseCase.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePointStatus.dart';
import 'package:clicktactoe/modules/player/core/LocalPlayerHandler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

part 'LocalGameStateManager.g.dart';

@Riverpod(keepAlive: true)
class LocalGameStateManager extends _$LocalGameStateManager {
  final _player1Provider = localPlayerHandlerProvider("1");
  final _player2Provider = localPlayerHandlerProvider("2");

  CancelableOperation<void>? _playingTask;

  @override
  GameState build(String key) {
    final player1Points = ref.watch(_player1Provider);
    final player2Points = ref.watch(_player2Provider);

    // developer.log(
    //   'BUILD player1Points:$player1Points player2Points:$player2Points',
    //   name: 'LocalGameStateManager',
    // );

    final playersPoints = _handlePlayerPoint(player1Points, player2Points);

    final winner = ref.read(
      getPlayerWinnerUseCaseProvider(player1Points, player2Points),
    );

    // developer.log('BUILD winner:$winner', name: 'LocalGameStateManager');

    if (winner != null) {
      stop();
      return GameStateWinner(playerWinner: winner, table: playersPoints);
    }

    developer.log('stateOrNull:$stateOrNull', name: 'LocalGameStateManager');
    final currentState = stateOrNull;
    if (currentState is GameStatePlaying) {
      return currentState.copyWith(table: playersPoints);
    }

    ref.onDispose(() {
      _playingTask?.cancel();
    });

    return GameStateIdle();
  }

  void start() {
    state = GameStatePlaying.fromStart(GamePlayer.player1);

    final player1 = ref.read(_player1Provider.notifier);
    final player2 = ref.read(_player2Provider.notifier);

    player1.restart();
    player2.restart();

    _startMainLoop();
  }

  @override
  void stop() {
    ref.read(_player1Provider.notifier).stop();
    ref.read(_player2Provider.notifier).stop();

    _playingTask?.cancel();
    _playingTask = null;
  }

  _startMainLoop() {
    if (_playingTask != null) {
      _playingTask?.cancel();
    }
    _playingTask = CancelableOperation.fromFuture(
      Future.microtask(() async {
        while (true) {
          state = state.updatePlayingPlayer(GamePlayer.player1);
          await ref.read(_player1Provider.notifier).handleMove();

          state = state.updatePlayingPlayer(GamePlayer.player2);
          await ref.read(_player2Provider.notifier).handleMove();
        }
      }),
    );
  }

  List<GamePoint> _handlePlayerPoint(
    List<GamePoint> player1Points,
    List<GamePoint> player2Points,
  ) {
    return player1Points + player2Points;
  }

  void onPointSelected(GamePointCoordinates point) {
    final currentState = stateOrNull;
    developer.log(
      'onPointSelected: $point currentState:$currentState',
      name: 'LocalGameStateManager',
    );
    if (currentState is GameStatePlaying) {
      switch (currentState.playerTour) {
        case GamePlayer.player1:
          ref
              .read(_player1Provider.notifier)
              .onPointSelected(
                GamePoint(player: GamePlayer.player1, coordinates: point),
              );
        case GamePlayer.player2:
          ref
              .read(_player2Provider.notifier)
              .onPointSelected(
                GamePoint(player: GamePlayer.player2, coordinates: point),
              );
      }
    }
  }
}
