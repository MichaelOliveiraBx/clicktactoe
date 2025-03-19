import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableUiState.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableUiStateNotifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameTableWidget extends ConsumerStatefulWidget {
  final GameConfiguration configuration;

  const GameTableWidget({super.key, required this.configuration});

  @override
  _GameTableWidgetState createState() => _GameTableWidgetState();
}

class _GameTableWidgetState extends ConsumerState<GameTableWidget> {
  @override
  Widget build(BuildContext context) {
    final uiState = ref.watch(
      gameTableUiStateNotifierProvider(widget.configuration),
    );
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
                              .read(
                                gameTableUiStateNotifierProvider(
                                  widget.configuration,
                                ).notifier,
                              )
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
                          .read(
                            gameTableUiStateNotifierProvider(
                              widget.configuration,
                            ).notifier,
                          )
                          .restart(),
              child: Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPoint(GameTablePointUiState state) {
    switch (state.type) {
      case GameTablePointType.empty:
        return Container();
      case GameTablePointType.cross:
        return Icon(Icons.close, color: state.isWinning ? Colors.green : null);
      case GameTablePointType.circle:
        return Icon(Icons.circle, color: state.isWinning ? Colors.green : null);
    }
  }
}
