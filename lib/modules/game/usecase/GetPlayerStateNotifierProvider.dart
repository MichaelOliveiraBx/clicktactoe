import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/player/core/LocalPlayerHandler.dart';
import 'package:clicktactoe/modules/player/core/ai/mimimax/MinimaxAiPlayerProvider.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerHandler.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerState.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerType.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'GetPlayerStateNotifierProvider.g.dart';

@riverpod
ProviderListenable<PlayerState> getPlayerStateNotifierProvider(
  Ref ref,
  PlayerType type,
  GamePlayer player,
) {
  switch (type) {
    case PlayerTypeLocal():
      return localPlayerHandlerProvider(player)
          as ProviderListenable<PlayerState>;
    case PlayerTypeAI():
      return minimaxAiPlayerProviderProvider(player)
          as ProviderListenable<PlayerState>;
    // TODO here we can call another AI player provider
    // we add an param to the PlayerTypeAI to select the AI player provider

    // return chatGptAiPlayerProviderProvider(player)
    //     as ProviderListenable<PlayerState>;
    case PlayerTypeRemote():
      throw UnimplementedError();
  }
}

@riverpod
Refreshable<PlayerHandler> getPlayerNotifierProvider(
  Ref ref,
  PlayerType type,
  GamePlayer player,
) {
  switch (type) {
    case PlayerTypeLocal():
      return localPlayerHandlerProvider(player).notifier;
    case PlayerTypeAI():
      return minimaxAiPlayerProviderProvider(player).notifier;
    // TODO here we can call another AI player provider
    // we add an param to the PlayerTypeAI to select the AI player provider

    // return chatGptAiPlayerProviderProvider(player).notifier;
    case PlayerTypeRemote():
      throw UnimplementedError();
  }
}
