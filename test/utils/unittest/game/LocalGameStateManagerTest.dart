import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/core/manager/LocalGameStateManager.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
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
  group('LocalGameStateManager Tests', () {
    late GameConfiguration configuration;
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
      configuration = GameConfiguration(
        player1Type: PlayerTypeLocal(),
        player2Type: PlayerTypeLocal(),
      );

      player1Notifier = MockMockPlayerNotifier();
      player2Notifier = MockMockPlayerNotifier();

      final mockNotifierProvider1 = Provider((ref) => player1Notifier);
      final mockNotifierProvider2 = Provider((ref) => player2Notifier);

      player1StateHandler = MockPlayerHandlerState();
      player2StateHandler = MockPlayerHandlerState();

      final mockProvider1 =
          StateNotifierProvider<MockPlayerHandlerState, PlayerState>(
            (ref) => player1StateHandler,
          );

      final mockProvider2 =
          StateNotifierProvider<MockPlayerHandlerState, PlayerState>(
            (ref) => player2StateHandler,
          );

      container = createContainer(
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
        ],
      );
    });

    test("Test", () async {
      final subscription = getSubscription();

      final notifier = container.read(
        localGameStateManagerProvider(configuration).notifier,
      );

      final value = subscription.read();
      expect(value, GameStateIdle());

      notifier.start();

      verify(player1Notifier.restart()).called(1);
      verify(player2Notifier.restart()).called(1);

      await Future.microtask(() {});
      verify(player1Notifier.handleMove(any, any)).called(1);
      verifyNever(player1Notifier.handleMove(any, any));
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
  });
}
