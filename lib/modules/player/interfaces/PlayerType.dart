import 'package:freezed_annotation/freezed_annotation.dart';

part 'PlayerType.freezed.dart';

@freezed
sealed class PlayerType with _$PlayerType {
  const factory PlayerType.local() = PlayerTypeLocal;

  const factory PlayerType.ai() = PlayerTypeAI;

  const factory PlayerType.remote({required String roomId}) = PlayerTypeRemote;

  factory PlayerType.fromKey(String? key) {
    switch (key) {
      case "local":
        return PlayerTypeLocal();
      case "ai":
        return PlayerTypeAI();
      case "remote":
        return PlayerTypeRemote(roomId: "");
      default:
        return PlayerTypeLocal();
    }
  }
}

extension PlayerTypeNavigation on PlayerType {
  String get key {
    return switch (this) {
      PlayerTypeLocal() => "local",
      PlayerTypeAI() => "ai",
      PlayerTypeRemote() => "remote",
    };
  }
}
