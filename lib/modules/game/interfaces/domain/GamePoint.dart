import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePointStatus.dart';

class GamePointCoordinates {
  final int x;
  final int y;

  GamePointCoordinates({required this.x, required this.y});

  @override
  String toString() {
    return 'GamePointCoordinates{x: $x, y: $y}';
  }
}

class GamePoint {
  final GamePointStatus status;
  final GamePlayer player;
  final GamePointCoordinates coordinates;

  GamePoint({
    this.status = GamePointStatus.none,
    required this.player,
    required this.coordinates,
  });

  @override
  String toString() {
    return 'GamePoint{status: $status, player: $player, coordinates: $coordinates}';
  }
}
