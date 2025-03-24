import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePointStatus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'GamePoint.freezed.dart';

@freezed
abstract class GamePointCoordinates with _$GamePointCoordinates {
  const factory GamePointCoordinates({required int x, required int y}) =
      _GamePointCoordinates;
}

@freezed
abstract class GamePoint with _$GamePoint {
  const factory GamePoint({
    @Default(GamePointStatus.none) GamePointStatus status,
    required GamePlayer player,
    required GamePointCoordinates coordinates,
  }) = _GamePoint;
}

@freezed
abstract class GamePoints with _$GamePoints {
  const factory GamePoints({@Default([]) List<GamePoint> points}) = _GamePoints;
}
