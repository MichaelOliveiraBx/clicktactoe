import 'dart:developer' as developer;

import 'package:clicktactoe/modules/design/AppScafold.dart';
import 'package:clicktactoe/modules/design/CrossFadeSwitcher.dart';
import 'package:clicktactoe/modules/design/buttons/ClickableButton.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/game/ui/notifiers/GameScreenUiStateNotifier.dart';
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

class _GameScreenState extends ConsumerState<GameScreen> {
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
  Widget build(BuildContext context) {
    final state = ref.watch(
      gameScreenUiStateNotifierProvider(widget.configuration),
    );
    return AppScaffold(
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
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
              CrossFadeSwitcher(
                child: Text(
                  key: ValueKey(state.status),
                  state.status.message(context),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 40),
              GameTableWidget(configuration: widget.configuration),
              Spacer(flex: 6),
              _restartBuildRestartButton(),
              Spacer(flex: 6),
            ],
          ),
        ],
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

extension EndedTurnTypeLocalized on EndedTurnType {
  String message(BuildContext context) {
    switch (this) {
      case EndedTurnType.none:
        return "";
      case EndedTurnType.player1:
        return context.l10n.gamePlayer1turn;
      case EndedTurnType.player2:
        return context.l10n.gamePlayer2turn;
    }
  }
}
