import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePointStatus.dart';
import 'package:clicktactoe/modules/sdk/extensions/collections/ListExtension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'GetPlayerWinnerUseCase.g.dart';

part 'GetPlayerWinnerUseCase.freezed.dart';

@freezed
abstract class WinnerData with _$WinnerData {
  factory WinnerData({
    required GamePlayer playerWinner,
    required List<GamePoint> winnerPlayerPoints,
  }) = _WinnerData;
}

@riverpod
WinnerData? getPlayerWinnerUseCase(
  Ref ref,
    GamePoints player1,
    GamePoints player2,
) {
  final player1Winner = _checkIfHasWinner(player1.points);
  if (player1Winner != null) {
    return WinnerData(
      playerWinner: GamePlayer.player1,
      winnerPlayerPoints: player1Winner + player2.points,
    );
  }

  final player2Winner = _checkIfHasWinner(player2.points);
  if (player2Winner != null) {
    return WinnerData(
      playerWinner: GamePlayer.player2,
      winnerPlayerPoints: player2Winner + player1.points,
    );
  }

  return null;
}

List<GamePoint>? _checkIfHasWinner(List<GamePoint> playerPoints) {
  if (playerPoints.length < 3) {
    return null;
  }

  final rowWinner = _checkIfHasWinnerInRow(playerPoints);
  if (rowWinner != null) {
    return rowWinner;
  }

  final columnWinner = _checkIfHasWinnerInColumn(playerPoints);
  if (columnWinner != null) {
    return columnWinner;
  }

  final diagonalWinner = _checkIfHasWinnerInDiagonal(playerPoints);
  if (diagonalWinner != null) {
    return diagonalWinner;
  }
  return null;
}

List<GamePoint>? _checkIfHasWinnerInRow(List<GamePoint> points) {
  final row1 = _checkIfHasWinnerInRowIndex(points, 0);
  if (row1 != null) {
    return row1;
  }

  final row2 = _checkIfHasWinnerInRowIndex(points, 1);
  if (row2 != null) {
    return row2;
  }

  final row3 = _checkIfHasWinnerInRowIndex(points, 2);
  if (row3 != null) {
    return row3;
  }

  return null;
}

List<GamePoint>? _checkIfHasWinnerInRowIndex(
  List<GamePoint> points,
  int index,
) {
  final row1Count = points.countWhere(
    (element) => element.coordinates.x == index,
  );
  if (row1Count == 3) {
    return points.map((e) {
      if (e.coordinates.x == index) {
        return e.copyWith(status: GamePointStatus.win);
      } else {
        return e;
      }
    }).toList();
  } else {
    return null;
  }
}

List<GamePoint>? _checkIfHasWinnerInColumn(List<GamePoint> points) {
  final column1 = _checkIfHasWinnerInColumnIndex(points, 0);
  if (column1 != null) {
    return column1;
  }

  final column2 = _checkIfHasWinnerInColumnIndex(points, 1);
  if (column2 != null) {
    return column2;
  }

  final column3 = _checkIfHasWinnerInColumnIndex(points, 2);
  if (column3 != null) {
    return column3;
  }

  return null;
}

List<GamePoint>? _checkIfHasWinnerInColumnIndex(
  List<GamePoint> points,
  int index,
) {
  final column1Count = points.countWhere(
    (element) => element.coordinates.y == index,
  );
  if (column1Count == 3) {
    return points.map((e) {
      if (e.coordinates.y == index) {
        return e.copyWith(status: GamePointStatus.win);
      } else {
        return e;
      }
    }).toList();
  } else {
    return null;
  }
}

List<GamePoint>? _checkIfHasWinnerInDiagonal(List<GamePoint> points) {
  final diagonal1Count = points.countWhere(
    (element) => element.coordinates.x == element.coordinates.y,
  );
  if (diagonal1Count == 3) {
    return points.map((e) {
      if (e.coordinates.x == e.coordinates.y) {
        return e.copyWith(status: GamePointStatus.win);
      } else {
        return e;
      }
    }).toList();
  }

  final diagonal2Count = points.countWhere(
    (element) => element.coordinates.x + element.coordinates.y == 2,
  );

  if (diagonal2Count == 3) {
    return points.map((e) {
      if (e.coordinates.x + e.coordinates.y == 2) {
        return e.copyWith(status: GamePointStatus.win);
      } else {
        return e;
      }
    }).toList();
  }
}
