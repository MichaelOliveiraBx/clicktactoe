import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/sdk/extensions/collections/ListExtension.dart';

sealed class GameState {
  final List<GamePoint> table;
  final GamePlayer? playerWinnings;

  GameState({required this.table, this.playerWinnings});

  @override
  String toString() {
    return 'GameState{table: $table}';
  }
}

class GameStateIdle extends GameState {
  GameStateIdle({super.table = const []});

  @override
  String toString() {
    return 'GameStateIdle{table: $table}';
  }
}

class GameStatePlaying extends GameState {
  final GamePlayer playerTour;

  // final GamePlayer? playerWinnings;

  GameStatePlaying({
    required super.table,
    required this.playerTour,
    super.playerWinnings,
  });

  factory GameStatePlaying.fromStart(GamePlayer playerTour) {
    return GameStatePlaying(table: const [], playerTour: playerTour);
  }

  // copy with
  GameStatePlaying copyWith({List<GamePoint>? table, GamePlayer? playerTour}) {
    return GameStatePlaying(
      table: table ?? this.table,
      playerTour: playerTour ?? this.playerTour,
      playerWinnings: playerWinnings,
    );
  }

  @override
  String toString() {
    return 'GameStatePlaying{playerTour: $playerTour, playerWinnings: $playerWinnings, table: $table}';
  }
}

class GameStateEnded extends GameState {
  final GamePlayer? playerWinner;

  GameStateEnded({required super.table, this.playerWinner});

  @override
  String toString() {
    return 'GameStateWinner{playerWinner: $playerWinner, table: $table}';
  }
}

extension GameStateExtension on GameState {
  GameState updatePlayingPlayer(GamePlayer player) {
    if (this is GameStatePlaying) {
      return GameStatePlaying(table: table, playerTour: player);
    }
    return this;
  }
}

extension GamesPointsExtension on List<GamePoint> {
  GamePoint? getPointAt(int row, int column) {
    return firstWhereOrNull(
      (point) => point.coordinates.x == row && point.coordinates.y == column,
    );
  }
}
