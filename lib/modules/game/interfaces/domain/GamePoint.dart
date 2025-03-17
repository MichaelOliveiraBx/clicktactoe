import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePointStatus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'GamePoint.freezed.dart';

class GamePointCoordinates {
  final int x;
  final int y;

  GamePointCoordinates({required this.x, required this.y});

  @override
  String toString() {
    return 'GamePointCoordinates{x: $x, y: $y}';
  }
}

@freezed
abstract class GamePoint with _$GamePoint {
  const factory GamePoint({
    @Default(GamePointStatus.none) GamePointStatus status,
    required GamePlayer player,
    required GamePointCoordinates coordinates,
  }) = _GamePoint;
}
