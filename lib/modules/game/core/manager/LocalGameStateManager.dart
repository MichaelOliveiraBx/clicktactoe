import 'dart:async';
import 'dart:developer' as developer;

import 'package:cancellation_token/cancellation_token.dart';
import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/core/usecase/GetPlayerWinnerUseCase.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/player/core/LocalPlayerHandler.dart';
import 'package:clicktactoe/modules/player/core/ai/chatgpt/ChatGptAiPlayerProvider.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerHandler.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'LocalGameStateManager.g.dart';

dynamic playerProvider(PlayerType type, GamePlayer player) {
  switch (type) {
    case PlayerTypeLocal():
      return localPlayerHandlerProvider(player);
    case PlayerTypeAI():
      return chatGptAiPlayerProviderProvider(player);
    case PlayerTypeRemote():
      throw UnimplementedError();
  }
}

@Riverpod()
class LocalGameStateManager extends _$LocalGameStateManager {
  GameConfiguration? _configuration;

  CancellationToken _playingCancellationToken = CancellationToken();

  @override
  GameState build(GameConfiguration configuration) {
    _configuration = configuration;

    ref.onCancel(() {
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

  dynamic get _player1Provider {
    final configuration = _configuration;
    if (configuration == null) {
      developer.log(
        'Configuration is null',
        name: 'LocalGameStateManager',
        error: 'Configuration must not be null',
      );
      throw StateError('Configuration must not be null');
    }
    return playerProvider(configuration.player1Type, GamePlayer.player1);
  }

  dynamic get _player2Provider {
    final configuration = _configuration;
    if (configuration == null) {
      developer.log(
        'Configuration is null',
        name: 'LocalGameStateManager',
        error: 'Configuration must not be null',
      );
      throw StateError('Configuration must not be null');
    }
    return playerProvider(configuration.player2Type, GamePlayer.player2);
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
    PlayerHandler player1Notifier,
    PlayerHandler player2Notifier,
    CancellationToken cancellationToken,
  ) async {
    Future.microtask(() async {
      while (!cancellationToken.isCancelled) {
        await _handlePlayerMove(player1Notifier, cancellationToken);
        if (cancellationToken.isCancelled) return;
        await _handlePlayerMove(player2Notifier, cancellationToken);
      }
    }).asCancellableWithErrorHandling(cancellationToken);
  }

  Future<void> _handlePlayerMove(
    PlayerHandler playerNotifier,
    CancellationToken cancellationToken,
  ) async {
    return playerNotifier
        .handleMove(state.table, cancellationToken)
        .asCancellableWithErrorHandling(cancellationToken);
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

extension FutureCanceledExtension on Future<void> {
  Future<void> asCancellableWithErrorHandling(
    CancellationToken cancellationToken,
  ) {
    return asCancellable(cancellationToken).catchError((e, stackTrace) {
      if (e is CancelledException) {
        developer.log('isCancelled', name: 'LocalGameStateManager');
        return;
      }
      developer.log(
        'Error: $e',
        name: 'LocalGameStateManager',
        error: e,
        stackTrace: stackTrace,
      );
    });
  }
}
