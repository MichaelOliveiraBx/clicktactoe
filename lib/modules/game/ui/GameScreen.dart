import 'dart:developer' as developer;

import 'package:clicktactoe/modules/design/AppScafold.dart';
import 'package:clicktactoe/modules/design/CrossFadeSwitcher.dart';
import 'package:clicktactoe/modules/design/buttons/ClickableButton.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GameConfiguration.dart';
import 'package:clicktactoe/modules/game/ui/notifiers/GameScreenUiStateNotifier.dart';
import 'package:clicktactoe/modules/game/ui/table/GameTableWidget.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:clicktactoe/modules/sdk/extensions/localization/LocalizationExtension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameScreen extends ConsumerStatefulWidget {
  final GameConfiguration configuration = const GameConfiguration(
    player1Type: PlayerTypeLocal(),
    player2Type: PlayerTypeLocal(),
  );

  const GameScreen({super.key});

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
          Column(
            children: [
              Spacer(flex: 10),
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
