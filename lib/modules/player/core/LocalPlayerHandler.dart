import 'dart:async';

import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

part 'LocalPlayerHandler.g.dart';

class LocalPlayerHandlerState {
  final List<GamePoint> points;
  final bool isPlayerTour;

  LocalPlayerHandlerState({this.points = const [], this.isPlayerTour = false});

  LocalPlayerHandlerState copyWith({
    List<GamePoint>? points,
    bool? isPlayerTour,
  }) {
    return LocalPlayerHandlerState(
      points: points ?? this.points,
      isPlayerTour: isPlayerTour ?? this.isPlayerTour,
    );
  }
}

@riverpod
class LocalPlayerHandler extends _$LocalPlayerHandler {
  Completer<void>? _currentMoveFuture;

  @override
  List<GamePoint> build(String key) {
    return [];
  }

  void onPointSelected(GamePoint point) {
    state = state + [point];

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

  Future<void> handleMove() async {
    final completer = Completer<void>();
    _currentMoveFuture = completer;
    return completer.future;
  }

  void stop() {
    developer.log(
      "Stop _currentMoveFuture:$_currentMoveFuture",
      name: "LocalPlayerHandler",
    );
    _currentMoveFuture?.complete();
    _currentMoveFuture = null;
  }

  void restart() {
    state = [];
  }
}
