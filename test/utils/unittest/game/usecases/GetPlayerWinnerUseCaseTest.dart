import 'package:clicktactoe/modules/game/core/usecase/GetPlayerWinnerUseCase.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePointStatus.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../ProviderTestUtils.dart';

typedef PlayerWinnerUseCase =
    WinnerData? Function(GamePoints player1, GamePoints player2);

void main() {
  group("GetPlayerWinnerUseCase", () {
    void check({
      GamePoints inPlayer1 = const GamePoints(),
      GamePoints inPlayer2 = const GamePoints(),
      WinnerData? outExpected,
    }) {
      final output = createContainer().read(
        getPlayerWinnerUseCaseProvider(inPlayer1, inPlayer2),
      );

      expect(output, outExpected);
    }

    test("Test without points", () {
      check(outExpected: null);
    });

    test("Test player 1 win in row", () {
      check(
        inPlayer1: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 0, y: 0),
          ),
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 0, y: 1),
          ),
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 0, y: 2),
          ),
        ]),
        inPlayer2: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 1, y: 0),
          ),
        ]),
        outExpected: WinnerData(
          playerWinner: GamePlayer.player1,
          winnerPlayerPoints: [
            GamePoint(
              player: GamePlayer.player1,
              coordinates: GamePointCoordinates(x: 0, y: 0),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player1,
              coordinates: GamePointCoordinates(x: 0, y: 1),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player1,
              coordinates: GamePointCoordinates(x: 0, y: 2),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player2,
              coordinates: GamePointCoordinates(x: 1, y: 0),
            ),
          ],
        ),
      );
    });

    test("Test player 2 win in column", () {
      check(
        inPlayer1: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 0, y: 0),
          ),
        ]),
        inPlayer2: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 0, y: 1),
          ),
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 1, y: 1),
          ),
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 2, y: 1),
          ),
        ]),
        outExpected: WinnerData(
          playerWinner: GamePlayer.player2,
          winnerPlayerPoints: [
            GamePoint(
              player: GamePlayer.player2,
              coordinates: GamePointCoordinates(x: 0, y: 1),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player2,
              coordinates: GamePointCoordinates(x: 1, y: 1),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player2,
              coordinates: GamePointCoordinates(x: 2, y: 1),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player1,
              coordinates: GamePointCoordinates(x: 0, y: 0),
            ),
          ],
        ),
      );
    });

    test("Test player 1 win in diagonal", () {
      check(
        inPlayer1: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 0, y: 0),
          ),
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 1, y: 1),
          ),
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 2, y: 2),
          ),
        ]),
        inPlayer2: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 0, y: 1),
          ),
        ]),
        outExpected: WinnerData(
          playerWinner: GamePlayer.player1,
          winnerPlayerPoints: [
            GamePoint(
              player: GamePlayer.player1,
              coordinates: GamePointCoordinates(x: 0, y: 0),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player1,
              coordinates: GamePointCoordinates(x: 1, y: 1),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player1,
              coordinates: GamePointCoordinates(x: 2, y: 2),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player2,
              coordinates: GamePointCoordinates(x: 0, y: 1),
            ),
          ],
        ),
      );
    });

    test("Test player 2 win in reverse diagonal", () {
      check(
        inPlayer1: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 0, y: 0),
          ),
        ]),
        inPlayer2: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 0, y: 2),
          ),
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 1, y: 1),
          ),
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 2, y: 0),
          ),
        ]),
        outExpected: WinnerData(
          playerWinner: GamePlayer.player2,
          winnerPlayerPoints: [
            GamePoint(
              player: GamePlayer.player2,
              coordinates: GamePointCoordinates(x: 0, y: 2),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player2,
              coordinates: GamePointCoordinates(x: 1, y: 1),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player2,
              coordinates: GamePointCoordinates(x: 2, y: 0),
              status: GamePointStatus.win,
            ),
            GamePoint(
              player: GamePlayer.player1,
              coordinates: GamePointCoordinates(x: 0, y: 0),
            ),
          ],
        ),
      );
    });

    test("Test equality case - full grid without winner", () {
      check(
        inPlayer1: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 0, y: 0),
          ),
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 1, y: 1),
          ),
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 2, y: 1),
          ),
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 1, y: 2),
          ),
          GamePoint(
            player: GamePlayer.player1,
            coordinates: GamePointCoordinates(x: 2, y: 0),
          ),
        ]),
        inPlayer2: GamePoints(points: [
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 1, y: 0),
          ),
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 0, y: 1),
          ),
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 0, y: 1),
          ),
          GamePoint(
            player: GamePlayer.player2,
            coordinates: GamePointCoordinates(x: 2, y: 2),
          ),
        ]),
        outExpected: null,
      );
    });
  });
}
