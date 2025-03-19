import 'dart:math';

import 'package:async/async.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

part 'MinimaxAiPlayerProvider.g.dart';

@riverpod
class MinimaxAiPlayerProvider extends _$MinimaxAiPlayerProvider {
  bool isPlaying = false;

  @override
  List<GamePoint> build() {
    return [];
  }

  void onPointSelected(GamePoint point) {}

  Future<void> handleMove(List<GamePoint> table) async {
    await Future.delayed(const Duration(milliseconds: 700));
    final board = table.toBoard();
    final newPoint = findBestMove2(board).toGamePoint(GamePlayer.player2);

    developer.log(
      'isPlaying:$isPlaying board:$board newPoint:$newPoint',
      name: 'MinimaxAiPlayerProvider',
    );
    if (!isPlaying) return;

    state = state + [newPoint];
  }

  void stop() {
    isPlaying = false;
  }

  void restart() {
    isPlaying = true;
    state = [];
  }
}

bool checkWin(List<int> board, int player) {
  List<List<int>> winningCombinations = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], // Lignes
    [0, 3, 6], [1, 4, 7], [2, 5, 8], // Colonnes
    [0, 4, 8], [2, 4, 6], // Diagonales
  ];

  for (var combo in winningCombinations) {
    if (board[combo[0]] == player &&
        board[combo[1]] == player &&
        board[combo[2]] == player) {
      return true;
    }
  }
  return false;
}

int? evaluate(List<int> board) {
  if (checkWin(board, 1)) {
    return 1; // X gagne
  } else if (checkWin(board, -1)) {
    return -1; // O gagne
  } else if (board.every((element) => element != 0)) {
    return 0; // Match nul
  }
  return null; // Partie non terminée
}

// Minimax avec alpha-beta pruning
int minimax(List<int> board, int depth, bool isMaximizing) {
  final score = evaluate(board);
  if (score != null) return score;

  if (isMaximizing) {
    int best = -999;
    for (int i = 0; i < 9; i++) {
      if (board[i] == 0) {
        board[i] = -1; // O joue
        best = max(best, minimax(board, depth + 1, false));
        board[i] = 0; // Annule le coup
      }
    }
    return best;
  } else {
    int best = 999;
    for (int i = 0; i < 9; i++) {
      if (board[i] == 0) {
        board[i] = 1; // X joue
        best = min(best, minimax(board, depth + 1, true));
        board[i] = 0; // Annule le coup
      }
    }
    return best;
  }
}

// Trouver le meilleur coup pour l'IA
int findBestMove(List<int> board) {
  int bestVal = -999;
  int bestMove = -1;

  for (int i = 0; i < 9; i++) {
    if (board[i] == 0) {
      board[i] = -1; // O joue
      int moveVal = minimax(board, 0, false);
      board[i] = 0; // Annule le coup
      if (moveVal > bestVal) {
        bestMove = i;
        bestVal = moveVal;
      }
    }
  }
  return bestMove;
}

int findBestMove2(List<int> board) {
  int bestVal = -999;
  List<int> bestMoves = []; // Liste des meilleurs coups possibles

  for (int i = 0; i < 9; i++) {
    if (board[i] == 0) {
      board[i] = -1;
      int moveVal = minimax(board, 0, false);
      board[i] = 0;

      if (moveVal > bestVal) {
        bestMoves = [i]; // Nouveau meilleur coup
        bestVal = moveVal;
      } else if (moveVal == bestVal) {
        bestMoves.add(i); // Ajoute un autre coup équivalent
      }
    }
  }

  // Sélectionne un coup au hasard parmi les meilleurs
  return bestMoves[Random().nextInt(bestMoves.length)];
}

extension IntGameExtension on int {
  GamePoint toGamePoint(GamePlayer player) {
    return GamePoint(
      player: player,
      coordinates: GamePointCoordinates(x: this % 3, y: this ~/ 3),
    );
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
