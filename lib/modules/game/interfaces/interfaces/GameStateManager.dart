import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';

abstract interface class GamesStateManager {
  GameState build(GameConfiguration configuration);

  void start();

  void stop();

  void onPointSelected(GamePointCoordinates point);
}
