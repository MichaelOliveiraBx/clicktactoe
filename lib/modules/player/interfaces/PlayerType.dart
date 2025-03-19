import 'package:freezed_annotation/freezed_annotation.dart';

part 'PlayerType.freezed.dart';

@freezed
sealed class PlayerType with _$PlayerType {
  const factory PlayerType.local() = PlayerTypeLocal;

  const factory PlayerType.ai() = PlayerTypeAI;

  const factory PlayerType.remote({required String roomId}) = PlayerTypeRemote;
}
