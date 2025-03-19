import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';

abstract class AiPlayerProvider {
  Future<GamePoint> getNextPoint(List<GamePoint> table);
}
