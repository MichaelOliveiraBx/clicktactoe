import 'package:clicktactoe/modules/game/core/manager/LocalGameStateManager.dart';
import 'package:clicktactoe/modules/game/core/usecase/GetGameTableUiState.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableUiState.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

part 'GameTableUiStateNotifier.g.dart';

@riverpod
class GameTableUiStateNotifier extends _$GameTableUiStateNotifier {
  GameConfiguration? _configuration;

  @override
  GameTableUiState build(GameConfiguration configuration) {
    _configuration = configuration;

    final gameState = ref.watch(localGameStateManagerProvider(configuration));
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
