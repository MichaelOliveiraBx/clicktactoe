import 'dart:async';
import 'dart:developer' as developer;

import 'package:clicktactoe/modules/game/core/manager/LocalGameStateManager.dart';
import 'package:clicktactoe/modules/game/usecase/GetGameTableUiState.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableUiState.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'GameTableUiStateNotifier.freezed.dart';
part 'GameTableUiStateNotifier.g.dart';

@freezed
sealed class GameTableEvent with _$GameTableEvent {
  const factory GameTableEvent.restartGridAnimation() =
      GameTableEventRestartGridAnimation;
}

@riverpod
class GameTableUiStateNotifier extends _$GameTableUiStateNotifier {
  final eventController = StreamController<GameTableEvent>();

  get eventStream => eventController.stream;

  GameConfiguration? _configuration;

  @override
  GameTableUiState build(GameConfiguration configuration) {
    _configuration = configuration;

    final gameState = ref.watch(localGameStateManagerProvider(configuration));
    developer.log(
      'GameTableUiStateNotifier build gameState: $gameState',
      name: 'GameTableUiStateNotifier',
    );
    if (gameState.table.isEmpty) {
      eventController.add(GameTableEventRestartGridAnimation());
    }
    final gameUiState = ref.read(getGameTableUiStateProvider(gameState));
    return gameUiState;
  }

  void onPointSelected(int row, int column) {
    final configuration = _configuration;
    if (configuration == null) {
      developer.log(
        'onPointSelected Configuration is null',
        name: 'GameTableUiStateNotifier',
        error: 'Configuration must not be null',
      );
      return;
    }

    developer.log(
      'onPointSelected row: $row, column: $column',
      name: 'GameTableUiStateNotifier',
    );

    ref
        .read(localGameStateManagerProvider(configuration).notifier)
        .onPointSelected(GamePointCoordinates(x: row, y: column));
  }
}
