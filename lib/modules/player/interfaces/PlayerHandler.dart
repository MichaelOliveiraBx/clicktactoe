import 'package:cancellation_token/cancellation_token.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerState.dart';

abstract class PlayerHandler {
  void onPointSelected(GamePoint point) {}

  Future<void> handleMove(
    List<GamePoint> table,
    CancellationToken cancellationToken,
  );

  void restart();
}

abstract class PlayerStateHandler {
  PlayerState build(GamePlayer player);

  bool updateShouldNotify(PlayerState previous, PlayerState next) {
    return previous != next;
  }
}
