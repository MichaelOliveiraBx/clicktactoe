import 'dart:math';

import 'package:async/async.dart';
import 'package:cancellation_token/cancellation_token.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerHandler.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerState.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

part 'MinimaxAiPlayerProvider.g.dart';

@riverpod
class MinimaxAiPlayerProvider extends _$MinimaxAiPlayerProvider
    implements PlayerHandler, PlayerStateHandler {
  @override
  PlayerState build(GamePlayer player) {
    return PlayerState();
  }

  @override
  void onPointSelected(GamePoint point) {}

  @override
  Future<void> handleMove(
    List<GamePoint> table,
    CancellationToken cancellationToken,
  ) async {
    state = state.copyWith(isPlayerTour: true);
    await Future.microtask(() async {
      await Future.delayed(const Duration(milliseconds: 700));
      final newPoint =
          TicTacToe(board: table.toTicTacToeBoard()).findBestMove();

      final newGamePoint = newPoint.toGamePoint(GamePlayer.player2);

      developer.log(
        'AI move: $newPoint newGamePoint:$newGamePoint',
        name: 'ChatGptAiPlayerProvider',
      );
      if (cancellationToken.isCancelled) {
        return;
      }
      state = state.copyWith(
        points: state.points + [newGamePoint],
        isPlayerTour: false,
      );
    });
  }

  @override
  void restart() {
    state = PlayerState();
  }
}

extension IntGameExtension on List<int> {
  GamePoint toGamePoint(GamePlayer player) {
    final gamePoint = GamePoint(
      player: player,
      coordinates: GamePointCoordinates(x: this[1], y: this[0]),
    );
    developer.log('To GamePoint - $this, $gamePoint', name: 'TicTacToe');
    return gamePoint;
  }
}

extension GamePointExtension on List<GamePoint> {
  List<int> toBoard() {
    final board = List<int>.filled(9, 0);
    for (final point in this) {
      board[point.coordinates.x + point.coordinates.y * 3] =
          point.player == GamePlayer.player1 ? 1 : -1;
    }
    return board;
  }
}

extension GamePointToTicTacToeBoard on List<GamePoint> {
  List<List<int>> toTicTacToeBoard() {
    developer.log('To TicTacToe - board - $this', name: 'TicTacToe');
    final board = List.generate(3, (_) => List.filled(3, 0));
    for (final point in this) {
      board[point.coordinates.y][point.coordinates.x] =
          point.player == GamePlayer.player2 ? 1 : -1;
    }
    developer.log('To TicTacToe board $board', name: 'TicTacToe');
    return board;
  }
}

class TicTacToe {
  static const int player = -1;
  static const int ai = 1;
  static const int empty = 0;

  List<List<int>> board;

  TicTacToe({required this.board});

  bool isMovesLeft() {
    for (var row in board) {
      for (var cell in row) {
        if (cell == empty) {
          return true;
        }
      }
    }
    return false;
  }

  int evaluate() {
    // Check rows, columns, and diagonals for a win
    for (int i = 0; i < 3; i++) {
      if (board[i][0] == board[i][1] && board[i][1] == board[i][2]) {
        if (board[i][0] == player) return 10;
        if (board[i][0] == ai) return -10;
      }
      if (board[0][i] == board[1][i] && board[1][i] == board[2][i]) {
        if (board[0][i] == player) return 10;
        if (board[0][i] == ai) return -10;
      }
    }
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
      if (board[0][0] == player) return 10;
      if (board[0][0] == ai) return -10;
    }
    if (board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
      if (board[0][2] == player) return 10;
      if (board[0][2] == ai) return -10;
    }
    return 0;
  }

  int minimax(int depth, bool isMax) {
    int score = evaluate();

    if (score == 10) return score - depth;
    if (score == -10) return score + depth;
    if (!isMovesLeft()) return 0;

    if (isMax) {
      int best = -1000;
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (board[i][j] == empty) {
            board[i][j] = player;
            best = max(best, minimax(depth + 1, !isMax));
            board[i][j] = empty;
          }
        }
      }
      return best;
    } else {
      int best = 1000;
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (board[i][j] == empty) {
            board[i][j] = ai;
            best = min(best, minimax(depth + 1, isMax));
            board[i][j] = empty;
          }
        }
      }
      return best;
    }
  }

  List<int> findBestMove() {
    int bestVal = -1000;
    List<int> bestMove = [-1, -1];

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board[i][j] == empty) {
          board[i][j] = player;
          int moveVal = minimax(0, false);
          board[i][j] = empty;

          if (moveVal > bestVal) {
            bestMove = [i, j];
            bestVal = moveVal;
          }
        }
      }
    }
    return bestMove;
  }
}
