
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'GameConfiguration.freezed.dart';

@freezed
abstract class GameConfiguration with _$GameConfiguration {
  const factory GameConfiguration({
    required PlayerType player1Type,
    required PlayerType player2Type,
  }) = _GameConfiguration;
}