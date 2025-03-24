import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/core/manager/LocalGameStateManager.dart';
import 'package:clicktactoe/modules/game/core/usecase/GetPlayerWinnerUseCase.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePointStatus.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerHandler.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerState.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../ProviderTestUtils.dart';
import 'LocalGameStateManagerTest.mocks.dart';

abstract class MockPlayerNotifier extends PlayerHandler {}

class MockPlayerHandlerState extends StateNotifier<PlayerState>
    with Mock
    implements PlayerHandler {
  MockPlayerHandlerState({PlayerState state = const PlayerState()})
    : super(state);

  setState(PlayerState state) {
    this.state = state;
  }
}

@GenerateMocks([MockPlayerNotifier])
void main() {
  final configuration = GameConfiguration(
    player1Type: PlayerTypeLocal(),
    player2Type: PlayerTypeLocal(),
  );

  ProviderContainer getProviderContainer({
    List<Override> overrides = const [],
    required MockMockPlayerNotifier localPlayer1Notifier,
    required MockMockPlayerNotifier localPlayer2Notifier,
    required MockPlayerHandlerState localPlayer1StateHandler,
    required MockPlayerHandlerState localPlayer2StateHandler,
  }) {
    final mockNotifierProvider1 = Provider((ref) => localPlayer1Notifier);
    final mockNotifierProvider2 = Provider((ref) => localPlayer2Notifier);

    final mockProvider1 =
        StateNotifierProvider<MockPlayerHandlerState, PlayerState>(
          (ref) => localPlayer1StateHandler,
        );

    final mockProvider2 =
        StateNotifierProvider<MockPlayerHandlerState, PlayerState>((ref) {
          return localPlayer2StateHandler;
        });

    return createContainer(
      overrides: [
        getPlayerStateNotifierProvider(
          configuration.player1Type,
          GamePlayer.player1,
        ).overrideWithValue(mockProvider1),
        getPlayerStateNotifierProvider(
          configuration.player2Type,
          GamePlayer.player2,
        ).overrideWithValue(mockProvider2),
        getPlayerNotifierProvider(
          configuration.player1Type,
          GamePlayer.player1,
        ).overrideWithValue(mockNotifierProvider1),
        getPlayerNotifierProvider(
          configuration.player2Type,
          GamePlayer.player2,
        ).overrideWithValue(mockNotifierProvider2),
        ...overrides,
      ],
    );
  }

  group('LocalGameStateManager setUp', () {
    late ProviderContainer container;
    late MockPlayerHandlerState player1StateHandler;
    late MockPlayerHandlerState player2StateHandler;
    late MockMockPlayerNotifier player1Notifier;
    late MockMockPlayerNotifier player2Notifier;

    ProviderSubscription<GameState> getSubscription() {
      final subscription = container.listen<GameState>(
        localGameStateManagerProvider(configuration),
        (_, __) {},
      );

      addTearDown(() {
        subscription.close();
      });

      return subscription;
    }

    setUp(() {
      player1Notifier = MockMockPlayerNotifier();
      player2Notifier = MockMockPlayerNotifier();

      player1StateHandler = MockPlayerHandlerState();
      player2StateHandler = MockPlayerHandlerState();

      container = getProviderContainer(
        localPlayer1Notifier: player1Notifier,
        localPlayer2Notifier: player2Notifier,
        localPlayer1StateHandler: player1StateHandler,
        localPlayer2StateHandler: player2StateHandler,
      );
    });

    test("Check init state", () async {
      final gameState = container.read(
        localGameStateManagerProvider(configuration),
      );

      expect(gameState, GameStateIdle());
    });

    test("Check player 1 turn", () async {
      final gameStateSubscription = getSubscription();

      player1StateHandler.setState(PlayerState(isPlayerTour: true));

      expect(
        gameStateSubscription.read(),
        GameStatePlaying(table: [], playerTour: GamePlayer.player1),
      );
    });

    test("Check player 2 turn", () async {
      final gameStateSubscription = getSubscription();

      player2StateHandler.setState(PlayerState(isPlayerTour: true));

      expect(
        gameStateSubscription.read(),
        GameStatePlaying(table: [], playerTour: GamePlayer.player2),
      );
    });

    test("Check players points are compute", () async {
      final gameStateSubscription = getSubscription();
      final player1GamePoint = GamePoint(
        player: GamePlayer.player1,
        coordinates: GamePointCoordinates(x: 0, y: 0),
      );

      final player2GamePoint = GamePoint(
        player: GamePlayer.player2,
        coordinates: GamePointCoordinates(x: 1, y: 1),
      );

      player1StateHandler.setState(
        PlayerState(isPlayerTour: false, points: [player1GamePoint]),
      );
      player2StateHandler.setState(
        PlayerState(isPlayerTour: true, points: [player2GamePoint]),
      );

      expect(
        gameStateSubscription.read(),
        GameStatePlaying(
          table: [player1GamePoint, player2GamePoint],
          playerTour: GamePlayer.player2,
        ),
      );
    });

    test("Check players are equality", () async {
      final gameStateSubscription = getSubscription();
      final player1Points = [
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
      ];

      final player2Points = [
        GamePoint(
          player: GamePlayer.player2,
          coordinates: GamePointCoordinates(x: 0, y: 1),
        ),
        GamePoint(
          player: GamePlayer.player2,
          coordinates: GamePointCoordinates(x: 0, y: 2),
        ),
        GamePoint(
          player: GamePlayer.player2,
          coordinates: GamePointCoordinates(x: 1, y: 0),
        ),
        GamePoint(
          player: GamePlayer.player2,
          coordinates: GamePointCoordinates(x: 2, y: 2),
        ),
      ];

      player1StateHandler.setState(
        PlayerState(isPlayerTour: false, points: player1Points),
      );
      player2StateHandler.setState(
        PlayerState(isPlayerTour: true, points: player2Points),
      );

      expect(
        gameStateSubscription.read(),
        GameStateEnded(
          table: [...player1Points, ...player2Points],
          playerWinner: null,
        ),
      );
    });

    test("Start call player 1 handle move", () async {
      final notifier = container.read(
        localGameStateManagerProvider(configuration).notifier,
      );

      notifier.start();

      verify(player1Notifier.restart()).called(1);
      verify(player2Notifier.restart()).called(1);

      await Future.microtask(() {});
      verify(player1Notifier.handleMove(any, any)).called(1);
      verifyNever(player1Notifier.handleMove(any, any));

      notifier.stop();
    });
  });

  group("LocalGameStateManager override provider without setup", () {
    test("Check when one player win", () async {
      final player1GamePoint = GamePoint(
        player: GamePlayer.player1,
        coordinates: GamePointCoordinates(x: 0, y: 0),
      );

      final player2GamePoint = GamePoint(
        player: GamePlayer.player2,
        coordinates: GamePointCoordinates(x: 1, y: 1),
      );

      final player2GamePointWinner = player2GamePoint.copyWith(
        status: GamePointStatus.win,
      );

      final winnerData = WinnerData(
        winnerPlayerPoints: [player1GamePoint, player2GamePointWinner],
        playerWinner: GamePlayer.player2,
      );

      final player1Notifier = MockMockPlayerNotifier();
      final player2Notifier = MockMockPlayerNotifier();

      final player1StateHandler = MockPlayerHandlerState();
      final player2StateHandler = MockPlayerHandlerState();

      final container = getProviderContainer(
        localPlayer1Notifier: player1Notifier,
        localPlayer2Notifier: player2Notifier,
        localPlayer1StateHandler: player1StateHandler,
        localPlayer2StateHandler: player2StateHandler,
        overrides: [
          getPlayerWinnerUseCaseProvider(
            GamePoints(points: [player1GamePoint]),
            GamePoints(points: [player2GamePoint]),
          ).overrideWithValue(winnerData),
        ],
      );

      player1StateHandler.setState(
        PlayerState(isPlayerTour: false, points: [player1GamePoint]),
      );
      player2StateHandler.setState(
        PlayerState(isPlayerTour: true, points: [player2GamePoint]),
      );

      expect(
        container.read(localGameStateManagerProvider(configuration)),
        GameStateEnded(
          playerWinner: GamePlayer.player2,
          table: [player1GamePoint, player2GamePointWinner],
        ),
      );
    });
  });
}
