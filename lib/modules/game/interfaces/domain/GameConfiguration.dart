import 'dart:developer' as developer;

import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'GameConfiguration.freezed.dart';

@freezed
abstract class GameConfiguration with _$GameConfiguration {
  const factory GameConfiguration({
    required PlayerType player1Type,
    required PlayerType player2Type,
  }) = _GameConfiguration;

  static fromNavigationParams(Map<String, String> params) {
    return GameConfiguration(
      player1Type: PlayerType.fromKey(params['player_1']),
      player2Type: PlayerType.fromKey(params['player_2']),
    );
  }
}

extension GameConfigurationNavigation on GameConfiguration {
  Map<String, String> get navigationParams {
    return {'player_1': player1Type.key, 'player_2': player2Type.key};
  }
}
