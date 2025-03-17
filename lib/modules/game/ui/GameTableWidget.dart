import 'package:clicktactoe/modules/game/core/manager/GameState.dart';
import 'package:clicktactoe/modules/game/core/manager/GameStateManager.dart';
import 'package:clicktactoe/modules/game/core/manager/LocalGameStateManager.dart';
import 'package:clicktactoe/modules/game/core/usecase/GetGameTableUiState.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

part 'GameTableWidget.g.dart';

enum GameTablePointType { empty, cross, circle }

class GameTablePointUiState {
  final GameTablePointType type;
  final bool isWinning;

  GameTablePointUiState({required this.type, required this.isWinning});

  @override
  String toString() {
    return 'GameTablePointUiState{type: $type}';
  }
}

class GameTableUiState {
  final List<List<GameTablePointType>> table;

  GameTableUiState({required this.table});

  @override
  String toString() {
    return 'GameTableUiState{table: $table}';
  }
}

@Riverpod(keepAlive: true)
class GameTableUiStateNotifier extends _$GameTableUiStateNotifier {
  @override
  GameTableUiState build() {
    final gameState = ref.watch(localGameStateManagerProvider);
    final gameUiState = ref.read(getGameTableUiStateProvider(gameState));
    developer.log(
      'BUILD gameState:$gameState gameUiState:$gameUiState',
      name: 'GameTableUiStateNotifier',
    );

    return gameUiState;
  }

  void onPointSelected(int row, int column) {
    ref
        .read(localGameStateManagerProvider.notifier)
        .onPointSelected(GamePointCoordinates(x: row, y: column));
  }

  void restart() {
    ref.read(localGameStateManagerProvider.notifier).start();
  }
}

class GameTableWidget extends ConsumerStatefulWidget {
  final GameStateManagerConfiguration configuration;

  const GameTableWidget({super.key, required this.configuration});

  @override
  _GameTableWidgetState createState() => _GameTableWidgetState();
}

class _GameTableWidgetState extends ConsumerState<GameTableWidget> {
  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(gameTableUiStateNotifierProvider);
    return IntrinsicHeight(
      child: IntrinsicWidth(
        child: Column(
          children: [
            for (var column = 0; column < 3; column++)
              Row(
                children: [
                  for (var row = 0; row < 3; row++)
                    GestureDetector(
                      onTap:
                          () => ref
                              .read(gameTableUiStateNotifierProvider.notifier)
                              .onPointSelected(row, column),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Center(
                          child: _buildPoint(uiState.table[column][row]),
                        ),
                      ),
                    ),
                ],
              ),
            ElevatedButton(
              onPressed:
                  () =>
                      ref
                          .read(gameTableUiStateNotifierProvider.notifier)
                          .restart(),
              child: Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPoint(GameTablePointType type) {
    switch (type) {
      case GameTablePointType.empty:
        return Container();
      case GameTablePointType.cross:
        return Icon(Icons.close);
      case GameTablePointType.circle:
        return Icon(Icons.circle);
    }
  }
}
