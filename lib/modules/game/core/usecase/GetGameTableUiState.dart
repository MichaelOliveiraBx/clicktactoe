import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePointStatus.dart';
import 'package:clicktactoe/modules/game/ui/GameTableWidget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'GetGameTableUiState.g.dart';

@riverpod
GameTableUiState getGameTableUiState(Ref ref, GameState gameState) {
  final List<List<GameTablePointType>> points = [];
  for (var column = 0; column < 3; column++) {
    final List<GameTablePointType> rowPoints = [];
    for (var row = 0; row < 3; row++) {
      final point = gameState.table.getPointAt(row, column);
      if (point == null) {
        rowPoints.add(GameTablePointType.empty);
      } else if (point.player == GamePlayer.player1) {
        rowPoints.add(GameTablePointType.cross);
      } else {
        rowPoints.add(GameTablePointType.circle);
      }
    }
    points.add(rowPoints);
  }

  return GameTableUiState(table: points);
}
