import 'dart:async';

import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableUiState.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableUiStateNotifier.dart';
import 'package:clicktactoe/modules/game/ui/table/GridPainter.dart';
import 'package:clicktactoe/modules/game/ui/table/point/PointWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameTableWidget extends ConsumerStatefulWidget {
  final GameConfiguration configuration;

  const GameTableWidget({super.key, required this.configuration});

  @override
  ConsumerState<GameTableWidget> createState() => _GameTableWidgetState();
}

class _GameTableWidgetState extends ConsumerState<GameTableWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _gridAnimationController;
  late StreamSubscription _eventSubscription;

  @override
  void initState() {
    super.initState();
    _gridAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _gridAnimationController.forward();
    _gridAnimationController.addListener(() {
      setState(() {});
    });

    _eventSubscription = ref
        .read(gameTableUiStateNotifierProvider(widget.configuration).notifier)
        .eventStream
        .listen((event) {
          if (event is GameTableEventRestartGridAnimation) {
            _gridAnimationController.reset();
            _gridAnimationController.forward();
          }
        });
  }

  @override
  void dispose() {
    _gridAnimationController.dispose();
    _eventSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = (MediaQuery.sizeOf(context).width * 0.8).clamp(0.0, 400.0);

    final uiState = ref.watch(
      gameTableUiStateNotifierProvider(widget.configuration),
    );

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [buildGrid(), buildGestureGrid(size / 3, uiState)],
      ),
    );
    // return buildGestureGrid(size / 3, uiState);
  }

  Widget buildGestureGrid(double cellSize, GameTableUiState uiState) {
    return Column(
      children: [
        for (var column = 0; column < 3; column++)
          Row(
            children: [
              for (var row = 0; row < 3; row++)
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap:
                      () => ref
                          .read(
                            gameTableUiStateNotifierProvider(
                              widget.configuration,
                            ).notifier,
                          )
                          .onPointSelected(row, column),
                  child: SizedBox(
                    width: cellSize,
                    height: cellSize,
                    child: Center(
                      child: _buildPoint(uiState.table[column][row], cellSize),
                    ),
                  ),
                ),
            ],
          ),
      ],
    );
  }

  Widget buildGrid() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: CustomPaint(
        painter: GridPainter(
          color: Theme.of(context).colorScheme.secondary,
          animateValue: _gridAnimationController.value,
        ),
      ),
    );
  }

  Widget? _buildPoint(GameTablePointUiState state, double cellSize) {
    const coeff = 0.5;
    switch (state.type) {
      case GameTablePointType.empty:
        return null;
      case GameTablePointType.cross:
        return SizedBox(
          width: cellSize * coeff,
          height: cellSize * coeff,
          child: PointWidget(isPlayer1: true),
        );
      case GameTablePointType.circle:
        return SizedBox(
          width: cellSize * coeff,
          height: cellSize * coeff,
          child: PointWidget(isPlayer1: false),
        );
    }
  }
}
