import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/sdk/extensions/collections/ListExtension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'GameState.freezed.dart';

@freezed
sealed class GameState with _$GameState {
  const factory GameState.idle({
    @Default([]) List<GamePoint> table,
  }) = GameStateIdle;

  const factory GameState.playing({
    required List<GamePoint> table,
    required GamePlayer playerTour,
  }) = GameStatePlaying;

  const factory GameState.ended({
    required List<GamePoint> table,
    GamePlayer? playerWinner,
  }) = GameStateEnded;
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
