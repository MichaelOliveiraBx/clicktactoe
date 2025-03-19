import 'package:cancellation_token/cancellation_token.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';

abstract interface class PlayerHandler {
  void onPointSelected(GamePoint point) {}

  Future<void> handleMove(
    List<GamePoint> table,
    CancellationToken cancellationToken,
  );

  void restart();
}
