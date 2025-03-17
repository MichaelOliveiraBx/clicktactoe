import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameTable.dart';

abstract class PlayerHandlingInterface {
  void onPointSelected(GamePoint point);

  Future<GamePoint> waitingAction(GameTable table);
}