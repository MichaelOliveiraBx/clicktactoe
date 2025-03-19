import 'dart:async';
import 'dart:developer' as developer;

import 'package:async/async.dart';
import 'package:cancellation_token/cancellation_token.dart';
import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/core/usecase/GetPlayerWinnerUseCase.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/player/core/LocalPlayerHandler.dart';
import 'package:clicktactoe/modules/player/core/ai/chatgpt/ChatGptAiPlayerProvider.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerHandler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'LocalGameStateManager.g.dart';

@Riverpod()
class LocalGameStateManager extends _$LocalGameStateManager {
  final _player1Provider = localPlayerHandlerProvider("1");
  final _player2Provider = chatGptAiPlayerProviderProvider;

  CancellationToken _playingCancellationToken = CancellationToken();

  @override
  GameState build() {
    developer.log('BUILD', name: 'LocalGameStateManager');

    ref.onCancel(() {
      developer.log('onCancel', name: 'LocalGameStateManager');
      stop();
    });

    final player1Points = ref.watch(_player1Provider);
    final player2Points = ref.watch(_player2Provider);

    final playersPoints = _handlePlayerPoint(
      player1Points.points,
      player2Points.points,
    );

    final winner = ref.read(
      getPlayerWinnerUseCaseProvider(
        player1Points.points,
        player2Points.points,
      ),
    );

    if (winner != null || playersPoints.length == 9) {
      stop();
      return GameStateEnded(
        playerWinner: winner?.playerWinner,
        table: winner?.winnerPlayerPoints ?? playersPoints,
      );
    }

    if (player1Points.isPlayerTour) {
      return GameStatePlaying(
        playerTour: GamePlayer.player1,
        table: playersPoints,
      );
    } else if (player2Points.isPlayerTour) {
      return GameStatePlaying(
        playerTour: GamePlayer.player2,
        table: playersPoints,
      );
    }

    return GameStateIdle();
  }

  void start() {
    _playingCancellationToken.cancel();
    _playingCancellationToken = CancellationToken();

    final player1 = ref.read(_player1Provider.notifier);
    final player2 = ref.read(_player2Provider.notifier);

    player1.restart();
    player2.restart();

    _startMainLoop(player1, player2, _playingCancellationToken);
  }

  void stop() {
    _playingCancellationToken.cancel();
  }

  // We need to pass directly notifier because we can't access to ref,
  // in the start function we call restart of player provider which rebuild
  // the notifier and we can't access to the ref at this time.
  _startMainLoop(
    LocalPlayerHandler player1Notifier,
    ChatGptAiPlayerProvider player2Notifier,
    CancellationToken cancellationToken,
  ) {
    Future.microtask(() async {
      while (!cancellationToken.isCancelled) {
        developer.log('Playing task PLAYER 1', name: 'LocalGameStateManager');
        await _handlePlayerMove(player1Notifier, cancellationToken);
        if (cancellationToken.isCancelled) return;
        developer.log('Playing task PLAYER 2', name: 'LocalGameStateManager');
        await _handlePlayerMove(player2Notifier, cancellationToken);
      }
    }).asCancellable(cancellationToken);
  }

  _handlePlayerMove(
    PlayerHandler playerNotifier,
    CancellationToken cancellationToken,
  ) async {
    try {
      await playerNotifier
          .handleMove(state.table, cancellationToken)
          .asCancellable(cancellationToken);
    } on CancelledException {
      developer.log(
        'CancelledException in playing task for $playerNotifier',
        name: 'LocalGameStateManager',
      );
    } catch (e, stackTrace) {
      developer.log(
        'Error in playing task:$e',
        name: 'LocalGameStateManager',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  List<GamePoint> _handlePlayerPoint(
    List<GamePoint> player1Points,
    List<GamePoint> player2Points,
  ) {
    return player1Points + player2Points;
  }

  void onPointSelected(GamePointCoordinates point) {
    if (state.table.any((element) => element.coordinates == point)) {
      return;
    }
    final currentState = state;
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
