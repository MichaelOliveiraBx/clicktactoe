import 'dart:convert';
import 'dart:developer' as developer;

import 'package:cancellation_token/cancellation_token.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePlayer.dart';
import 'package:clicktactoe/modules/game/interfaces/domain/GamePoint.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerHandler.dart';
import 'package:clicktactoe/modules/player/interfaces/PlayerState.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ChatGptAiPlayerProvider.g.dart';

@riverpod
class ChatGptAiPlayerProvider extends _$ChatGptAiPlayerProvider
    implements PlayerHandler, PlayerStateHandler {
  @override
  PlayerState build(GamePlayer player) {
    return PlayerState();
  }

  @override
  void onPointSelected(GamePoint point) {}

  @override
  Future<void> handleMove(
    List<GamePoint> table,
    CancellationToken cancellationToken,
  ) async {
    state = state.copyWith(isPlayerTour: true);
    await Future.microtask(() async {
      final gamePoint = await ref.read(
        getChatGptNextPointProvider(table).future,
      );
      if (cancellationToken.isCancelled) {
        return;
      }
      state = state.copyWith(
        points: state.points + [gamePoint],
        isPlayerTour: false,
      );
    });
  }

  @override
  void restart() {
    state = PlayerState();
  }
}

@riverpod
Future<GamePoint> getChatGptNextPoint(Ref ref, List<GamePoint> table) async {
  final aiPlayer = await ref.read(handleCallGptProvider(table).future);
  return aiPlayer;
}

@riverpod
OpenAI getChatGptClient(Ref ref) {
  return OpenAI.instance.build(
    // TODO if you want test with chatgpt you can put you api key here
    //  and change in GetPlayerStateNotifierProvider.dart to the good Notifier
    baseOption: HttpSetup(
      receiveTimeout: const Duration(seconds: 20),
      connectTimeout: const Duration(seconds: 20),
    ),
    enableLog: true,
  );
}

@riverpod
Future<GamePoint> handleCallGpt(Ref ref, List<GamePoint> input) async {
  final openApi = ref.read(getChatGptClientProvider);
  final jsonTable = input.toJson();
  final request = ChatCompleteText(
    model: Gpt4OChatModel(),
    messages: [
      Messages(
        role: Role.user,
        content:
            "Here is the current state of a Tic-Tac-Toe game: \n $jsonTable",
      ).toJson(),
      Messages(
        role: Role.assistant,
        content:
            "You are an tic tac toe player, you are player2 and you must calculate the best move to don't lose in the following format {'x':0, 'y':0} without explain without the header ```json```",
      ).toJson(),
    ],
    maxToken: 200,
  );
  final response = await openApi.onChatCompletion(request: request);
  final responseHandle =
      response?.choices.map((e) => e.message?.content ?? '').toList() ?? [];
  return responseHandle.first.gamePointFromJson(GamePlayer.player2);
}

extension GamePointJson on GamePoint {
  Map<String, dynamic> toJson() {
    return {'player': player.name, 'x': coordinates.x, 'y': coordinates.y};
  }
}

extension StringGamePoint on String {
  GamePoint gamePointFromJson(GamePlayer player) {
    final updated = replaceAll("'", "\"");
    final map = json.decode(updated);
    return GamePoint(
      player: player,
      coordinates: GamePointCoordinates(x: map['x'], y: map['y']),
    );
  }
}

extension ListGamePointJson on List<GamePoint> {
  String toJson() {
    final value = map((e) => e.toJson()).toList();
    return json.encode(value);
  }
}
