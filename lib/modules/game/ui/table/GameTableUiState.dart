import 'package:freezed_annotation/freezed_annotation.dart';

part 'GameTableUiState.freezed.dart';

enum GameTablePointType { empty, cross, circle }

@freezed
abstract class GameTablePointUiState with _$GameTablePointUiState {
  const factory GameTablePointUiState({
    required GameTablePointType type,
    required bool isWinning,
  }) = _GameTablePointUiState;
}

@freezed
abstract class GameTableUiState with _$GameTableUiState {
  const factory GameTableUiState({
    required List<List<GameTablePointUiState>> table,
  }) = _GameTableUiState;
}
