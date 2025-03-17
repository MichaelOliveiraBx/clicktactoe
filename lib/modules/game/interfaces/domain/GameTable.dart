import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';

class GameTable {
  final List<GamePoint> points;

  GameTable({required this.points});

  GameTable copyWith({List<GamePoint>? points}) {
    return GameTable(points: points ?? this.points);
  }
}
