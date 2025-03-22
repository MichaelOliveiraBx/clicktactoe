import 'package:clicktactoe/modules/game/ui/notifiers/GameScreenUiStateNotifier.dart';
import 'package:clicktactoe/modules/game/ui/table/point/PointWidget.dart';
import 'package:clicktactoe/modules/sdk/extensions/localization/LocalizationExtension.dart';
import 'package:flutter/material.dart';

class EndedTableWidget extends StatelessWidget {
  final GameScreenEndedUiState state;

  const EndedTableWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final bool firstPointIsPlayer1;
    final bool displaySecondPoint;
    final String text;

    switch (state.type) {
      case EndedGameType.draw:
        {
          firstPointIsPlayer1 = true;
          displaySecondPoint = true;
          text = context.l10n.commonEquality;
        }
      case EndedGameType.player1:
        {
          firstPointIsPlayer1 = true;
          displaySecondPoint = false;
          text = context.l10n.commonWin;
        }
      case EndedGameType.player2:
        {
          firstPointIsPlayer1 = false;
          displaySecondPoint = false;
          text = context.l10n.commonWin;
        }
    }

    return SizedBox(
      height: 120,
      child: IntrinsicWidth(
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: PointWidget(isPlayer1: firstPointIsPlayer1),
                  ),
                  if (displaySecondPoint) SizedBox(width: 40),
                  if (displaySecondPoint)
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: PointWidget(isPlayer1: false),
                    ),
                ],
              ),
              SizedBox(height: 36),
              Text(text, style: Theme.of(context).textTheme.headlineLarge),
            ],
          ),
        ),
      ),
    );
  }
}
