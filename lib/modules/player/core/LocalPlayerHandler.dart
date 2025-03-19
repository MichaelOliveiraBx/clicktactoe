import 'dart:async';
import 'dart:developer' as developer;

import 'package:async/async.dart';
import 'package:cancellation_token/cancellation_token.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerHandler.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerState.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'LocalPlayerHandler.g.dart';

@riverpod
class LocalPlayerHandler extends _$LocalPlayerHandler implements PlayerHandler {
  Completer<void>? _currentMoveFuture;
  CancelableOperation<void>? _currentMoveCancelableOperation;

  @override
  PlayerState build(String key) {
    return PlayerState();
  }

  @override
  void onPointSelected(GamePoint point) {
    state = state.copyWith(points: state.points + [point], isPlayerTour: false);
    if (_currentMoveFuture != null) {
      _currentMoveFuture?.complete();
      _currentMoveFuture = null;
    } else {
      developer.log(
        "No future to complete",
        name: "LocalPlayerHandler",
        error: "_currentMoveFuture must not be null",
      );
    }
  }

  @override
  Future<void> handleMove(
    List<GamePoint> table,
    CancellationToken cancellationToken,
  ) async {
    state = state.copyWith(isPlayerTour: true);
    final completer = Completer<void>();
    _currentMoveFuture = completer;
    return completer.future;
  }

  @override
  void restart() {
    state = PlayerState();
  }

  @override
  bool updateShouldNotify(PlayerState previous, PlayerState next) {
    return previous != next;
  }
}
