import 'dart:developer' as developer;
import 'dart:ui';

import 'package:clicktactoe/modules/design/AppScafold.dart';
import 'package:clicktactoe/modules/design/CrossFadeSwitcher.dart';
import 'package:clicktactoe/modules/design/buttons/ClickableButton.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/game/ui/notifiers/GameScreenUiStateNotifier.dart';
import 'package:clicktactoe/modules/game/ui/table/EndedTableWidget.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableUiState.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableWidget.dart';
import 'package:clicktactoe/modules/game/ui/table/point/PointWidget.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:clicktactoe/modules/sdk/extensions/localization/LocalizationExtension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class GameScreen extends ConsumerStatefulWidget {
  final GameConfiguration configuration;

  const GameScreen(this.configuration, {super.key});

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen>
    with TickerProviderStateMixin {
  GameScreenEndedUiState? _lastEndedUiState;

  late final AnimationController _endWidgetController = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );

  @override
  void initState() {
    super.initState();

    // We want to start the game but we need to wait the widget
    // building task to modifier notifier
    Future.microtask(() {
      ref
          .read(
            gameScreenUiStateNotifierProvider(widget.configuration).notifier,
          )
          .restart();
    });
  }

  @override
  void dispose() {
    _endWidgetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state =
        ref
            .watch(gameScreenUiStateNotifierProvider(widget.configuration))
            .valueOrNull;

    // Will never append but permit me to avoid null check
    if (state == null) {
      return SizedBox();
    }

    if (state.endedUiState != null) {
      _endWidgetController.forward();
    } else {
      _endWidgetController.reset();
    }

    return AppScaffold(
      child: Container(
        constraints: BoxConstraints(
          minHeight: double.infinity,
          maxHeight: double.infinity,
          minWidth: 200,
          maxWidth: 500,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 4,
              right: 16,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            Column(
              children: [
                Spacer(flex: 6),
                Text(
                  context.l10n.appName,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                Spacer(flex: 5),
                _buildPlayerScores(state),
                Spacer(flex: 5),
                _buildTurn(state),
                SizedBox(height: 40),
                GameTableWidget(configuration: widget.configuration),
                Spacer(flex: 6),
                _restartBuildRestartButton(),
                Spacer(flex: 6),
              ],
            ),
            Align(
              alignment: Alignment(0, 0.38),
              child: _buildEndWidget(state.endedUiState),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTurn(GameScreenUiState state) {
    return AnimatedOpacity(
      opacity: state.status == EndedTurnType.none ? 0 : 1,
      duration: Duration(milliseconds: 500),
      child: SizedBox(
        height: 28,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CrossFadeSwitcher(
              child: switch (state.status) {
                EndedTurnType.none => SizedBox(key: ValueKey(state.status)),
                EndedTurnType.player1 => AspectRatio(
                  key: ValueKey(state.status),
                  aspectRatio: 1,
                  child: PointWidget(isPlayer1: true, withAnimation: false),
                ),
                EndedTurnType.player2 => AspectRatio(
                  key: ValueKey(state.status),
                  aspectRatio: 1,
                  child: PointWidget(isPlayer1: false, withAnimation: false),
                ),
              },
            ),
            SizedBox(width: 16),
            Text(
              context.l10n.gamePlayerTurn.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEndWidget(GameScreenEndedUiState? endedUiState) {
    // We want to store the state when it was null to display it during the animation
    final handleUiState = endedUiState ?? _lastEndedUiState;
    if (endedUiState != null) {
      _lastEndedUiState = endedUiState;
    }

    if (handleUiState == null) {
      return SizedBox();
    }

    final height = MediaQuery.sizeOf(context).width * 0.9;

    return SizedBox(
      height: height,
      width: double.infinity,
      child: AnimatedBuilder(
        animation: _endWidgetController,
        child: EndedTableWidget(state: handleUiState),
        builder: (BuildContext context, Widget? child) {
          return Visibility(
            visible: _endWidgetController.value > 0,
            child: Opacity(
              opacity: _endWidgetController.value,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0 * _endWidgetController.value,
                    sigmaY: 10.0 * _endWidgetController.value,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: child,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _restartBuildRestartButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        height: 68,
        child: ClickableButton(
          onClick: () {
            ref
                .read(
                  gameScreenUiStateNotifierProvider(
                    widget.configuration,
                  ).notifier,
                )
                .restart();
          },
          child: Text(
            context.l10n.commonReplay,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }

  Widget _buildPlayerScores(GameScreenUiState state) {
    return Container(
      constraints: BoxConstraints.expand(height: 60),
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          _buildPlayerScore(true, state.player1Score),
          SizedBox(width: 16),
          _buildPlayerScore(false, state.player2Score),
        ],
      ),
    );
  }

  Widget _buildPlayerScore(bool isPlayer1, int score) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        alignment: Alignment.center,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: PointWidget(isPlayer1: isPlayer1, withAnimation: false),
            ),
            Spacer(),
            Text(
              score.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
