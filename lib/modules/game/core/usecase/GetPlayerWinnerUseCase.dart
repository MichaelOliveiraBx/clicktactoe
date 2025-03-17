import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/sdk/extensions/collections/ListExtension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'GetPlayerWinnerUseCase.g.dart';

@riverpod
GamePlayer? getPlayerWinnerUseCase(
  Ref ref,
  List<GamePoint> player1Points,
  List<GamePoint> player2Points,
) {
  final player1Winner = _checkIfHasWinner(player1Points);
  if (player1Winner) {
    return GamePlayer.player1;
  }

  final player2Winner = _checkIfHasWinner(player2Points);
  if (player2Winner) {
    return GamePlayer.player2;
  }

  return null;
}

bool _checkIfHasWinner(List<GamePoint> playerPoints) {
  if (playerPoints.length < 3) {
    return false;
  }

  if (_checkIfHasWinnerInRow(playerPoints)) {
    return true;
  }

  if (_checkIfHasWinnerInColumn(playerPoints)) {
    return true;
  }

  if (_checkIfHasWinnerInDiagonal(playerPoints)) {
    return true;
  }

  return false;
}

bool _checkIfHasWinnerInRow(List<GamePoint> points) {
  final row1Count = points.countWhere((element) => element.coordinates.x == 0);
  final row2Count = points.countWhere((element) => element.coordinates.x == 1);
  final row3Count = points.countWhere((element) => element.coordinates.x == 2);

  return row1Count == 3 || row2Count == 3 || row3Count == 3;
}

bool _checkIfHasWinnerInColumn(List<GamePoint> points) {
  final column1Count = points.countWhere((element) => element.coordinates.y == 0);
  final column2Count = points.countWhere((element) => element.coordinates.y == 1);
  final column3Count = points.countWhere((element) => element.coordinates.y == 2);

  return column1Count == 3 || column2Count == 3 || column3Count == 3;
}

bool _checkIfHasWinnerInDiagonal(List<GamePoint> points) {
  final diagonal1Count = points.countWhere((element) => element.coordinates.x == element.coordinates.y);
  final diagonal2Count = points.countWhere((element) => element.coordinates.x + element.coordinates.y == 2);

  return diagonal1Count == 3 || diagonal2Count == 3;
}