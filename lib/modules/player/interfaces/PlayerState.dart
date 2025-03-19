import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'PlayerState.freezed.dart';

@freezed
abstract class PlayerState with _$PlayerState {
  const factory PlayerState({
    @Default([]) List<GamePoint> points,
    @Default(false) bool isPlayerTour,
  }) = _PlayerState;
}