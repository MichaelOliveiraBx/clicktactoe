sealed class PlayerType {
  const PlayerType();
}

class PlayerTypeLocal extends PlayerType {
  const PlayerTypeLocal();
}

class PlayerTypeAI extends PlayerType {}

class PlayerTypeRemote extends PlayerType {
  final String roomId;

  PlayerTypeRemote({required this.roomId});
}
