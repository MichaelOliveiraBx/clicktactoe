// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GameScreenUiStateNotifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameScreenEndedUiState {

 EndedGameType get type;
/// Create a copy of GameScreenEndedUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameScreenEndedUiStateCopyWith<GameScreenEndedUiState> get copyWith => _$GameScreenEndedUiStateCopyWithImpl<GameScreenEndedUiState>(this as GameScreenEndedUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameScreenEndedUiState&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'GameScreenEndedUiState(type: $type)';
}


}

/// @nodoc
abstract mixin class $GameScreenEndedUiStateCopyWith<$Res>  {
  factory $GameScreenEndedUiStateCopyWith(GameScreenEndedUiState value, $Res Function(GameScreenEndedUiState) _then) = _$GameScreenEndedUiStateCopyWithImpl;
@useResult
$Res call({
 EndedGameType type
});




}
/// @nodoc
class _$GameScreenEndedUiStateCopyWithImpl<$Res>
    implements $GameScreenEndedUiStateCopyWith<$Res> {
  _$GameScreenEndedUiStateCopyWithImpl(this._self, this._then);

  final GameScreenEndedUiState _self;
  final $Res Function(GameScreenEndedUiState) _then;

/// Create a copy of GameScreenEndedUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EndedGameType,
  ));
}

}


/// @nodoc


class _GameScreenEndedUiState implements GameScreenEndedUiState {
   _GameScreenEndedUiState({required this.type});
  

@override final  EndedGameType type;

/// Create a copy of GameScreenEndedUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameScreenEndedUiStateCopyWith<_GameScreenEndedUiState> get copyWith => __$GameScreenEndedUiStateCopyWithImpl<_GameScreenEndedUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameScreenEndedUiState&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'GameScreenEndedUiState(type: $type)';
}


}

/// @nodoc
abstract mixin class _$GameScreenEndedUiStateCopyWith<$Res> implements $GameScreenEndedUiStateCopyWith<$Res> {
  factory _$GameScreenEndedUiStateCopyWith(_GameScreenEndedUiState value, $Res Function(_GameScreenEndedUiState) _then) = __$GameScreenEndedUiStateCopyWithImpl;
@override @useResult
$Res call({
 EndedGameType type
});




}
/// @nodoc
class __$GameScreenEndedUiStateCopyWithImpl<$Res>
    implements _$GameScreenEndedUiStateCopyWith<$Res> {
  __$GameScreenEndedUiStateCopyWithImpl(this._self, this._then);

  final _GameScreenEndedUiState _self;
  final $Res Function(_GameScreenEndedUiState) _then;

/// Create a copy of GameScreenEndedUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_GameScreenEndedUiState(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EndedGameType,
  ));
}


}

/// @nodoc
mixin _$GameScreenUiState {

 EndedTurnType get status; int get player1Score; int get player2Score; GameScreenEndedUiState? get endedUiState;
/// Create a copy of GameScreenUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameScreenUiStateCopyWith<GameScreenUiState> get copyWith => _$GameScreenUiStateCopyWithImpl<GameScreenUiState>(this as GameScreenUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameScreenUiState&&(identical(other.status, status) || other.status == status)&&(identical(other.player1Score, player1Score) || other.player1Score == player1Score)&&(identical(other.player2Score, player2Score) || other.player2Score == player2Score)&&(identical(other.endedUiState, endedUiState) || other.endedUiState == endedUiState));
}


@override
int get hashCode => Object.hash(runtimeType,status,player1Score,player2Score,endedUiState);

@override
String toString() {
  return 'GameScreenUiState(status: $status, player1Score: $player1Score, player2Score: $player2Score, endedUiState: $endedUiState)';
}


}

/// @nodoc
abstract mixin class $GameScreenUiStateCopyWith<$Res>  {
  factory $GameScreenUiStateCopyWith(GameScreenUiState value, $Res Function(GameScreenUiState) _then) = _$GameScreenUiStateCopyWithImpl;
@useResult
$Res call({
 EndedTurnType status, int player1Score, int player2Score, GameScreenEndedUiState? endedUiState
});


$GameScreenEndedUiStateCopyWith<$Res>? get endedUiState;

}
/// @nodoc
class _$GameScreenUiStateCopyWithImpl<$Res>
    implements $GameScreenUiStateCopyWith<$Res> {
  _$GameScreenUiStateCopyWithImpl(this._self, this._then);

  final GameScreenUiState _self;
  final $Res Function(GameScreenUiState) _then;

/// Create a copy of GameScreenUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? player1Score = null,Object? player2Score = null,Object? endedUiState = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EndedTurnType,player1Score: null == player1Score ? _self.player1Score : player1Score // ignore: cast_nullable_to_non_nullable
as int,player2Score: null == player2Score ? _self.player2Score : player2Score // ignore: cast_nullable_to_non_nullable
as int,endedUiState: freezed == endedUiState ? _self.endedUiState : endedUiState // ignore: cast_nullable_to_non_nullable
as GameScreenEndedUiState?,
  ));
}
/// Create a copy of GameScreenUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameScreenEndedUiStateCopyWith<$Res>? get endedUiState {
    if (_self.endedUiState == null) {
    return null;
  }

  return $GameScreenEndedUiStateCopyWith<$Res>(_self.endedUiState!, (value) {
    return _then(_self.copyWith(endedUiState: value));
  });
}
}


/// @nodoc


class _GameScreenUiState implements GameScreenUiState {
   _GameScreenUiState({required this.status, required this.player1Score, required this.player2Score, this.endedUiState});
  

@override final  EndedTurnType status;
@override final  int player1Score;
@override final  int player2Score;
@override final  GameScreenEndedUiState? endedUiState;

/// Create a copy of GameScreenUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameScreenUiStateCopyWith<_GameScreenUiState> get copyWith => __$GameScreenUiStateCopyWithImpl<_GameScreenUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameScreenUiState&&(identical(other.status, status) || other.status == status)&&(identical(other.player1Score, player1Score) || other.player1Score == player1Score)&&(identical(other.player2Score, player2Score) || other.player2Score == player2Score)&&(identical(other.endedUiState, endedUiState) || other.endedUiState == endedUiState));
}


@override
int get hashCode => Object.hash(runtimeType,status,player1Score,player2Score,endedUiState);

@override
String toString() {
  return 'GameScreenUiState(status: $status, player1Score: $player1Score, player2Score: $player2Score, endedUiState: $endedUiState)';
}


}

/// @nodoc
abstract mixin class _$GameScreenUiStateCopyWith<$Res> implements $GameScreenUiStateCopyWith<$Res> {
  factory _$GameScreenUiStateCopyWith(_GameScreenUiState value, $Res Function(_GameScreenUiState) _then) = __$GameScreenUiStateCopyWithImpl;
@override @useResult
$Res call({
 EndedTurnType status, int player1Score, int player2Score, GameScreenEndedUiState? endedUiState
});


@override $GameScreenEndedUiStateCopyWith<$Res>? get endedUiState;

}
/// @nodoc
class __$GameScreenUiStateCopyWithImpl<$Res>
    implements _$GameScreenUiStateCopyWith<$Res> {
  __$GameScreenUiStateCopyWithImpl(this._self, this._then);

  final _GameScreenUiState _self;
  final $Res Function(_GameScreenUiState) _then;

/// Create a copy of GameScreenUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? player1Score = null,Object? player2Score = null,Object? endedUiState = freezed,}) {
  return _then(_GameScreenUiState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EndedTurnType,player1Score: null == player1Score ? _self.player1Score : player1Score // ignore: cast_nullable_to_non_nullable
as int,player2Score: null == player2Score ? _self.player2Score : player2Score // ignore: cast_nullable_to_non_nullable
as int,endedUiState: freezed == endedUiState ? _self.endedUiState : endedUiState // ignore: cast_nullable_to_non_nullable
as GameScreenEndedUiState?,
  ));
}

/// Create a copy of GameScreenUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameScreenEndedUiStateCopyWith<$Res>? get endedUiState {
    if (_self.endedUiState == null) {
    return null;
  }

  return $GameScreenEndedUiStateCopyWith<$Res>(_self.endedUiState!, (value) {
    return _then(_self.copyWith(endedUiState: value));
  });
}
}

// dart format on
