// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GameState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameState {

 List<GamePoint> get table;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&const DeepCollectionEquality().equals(other.table, table));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(table));

@override
String toString() {
  return 'GameState(table: $table)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 List<GamePoint> table
});




}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? table = null,}) {
  return _then(_self.copyWith(
table: null == table ? _self.table : table // ignore: cast_nullable_to_non_nullable
as List<GamePoint>,
  ));
}

}


/// @nodoc


class GameStateIdle implements GameState {
  const GameStateIdle({final  List<GamePoint> table = const []}): _table = table;
  

 final  List<GamePoint> _table;
@override@JsonKey() List<GamePoint> get table {
  if (_table is EqualUnmodifiableListView) return _table;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_table);
}


/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateIdleCopyWith<GameStateIdle> get copyWith => _$GameStateIdleCopyWithImpl<GameStateIdle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStateIdle&&const DeepCollectionEquality().equals(other._table, _table));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_table));

@override
String toString() {
  return 'GameState.idle(table: $table)';
}


}

/// @nodoc
abstract mixin class $GameStateIdleCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory $GameStateIdleCopyWith(GameStateIdle value, $Res Function(GameStateIdle) _then) = _$GameStateIdleCopyWithImpl;
@override @useResult
$Res call({
 List<GamePoint> table
});




}
/// @nodoc
class _$GameStateIdleCopyWithImpl<$Res>
    implements $GameStateIdleCopyWith<$Res> {
  _$GameStateIdleCopyWithImpl(this._self, this._then);

  final GameStateIdle _self;
  final $Res Function(GameStateIdle) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? table = null,}) {
  return _then(GameStateIdle(
table: null == table ? _self._table : table // ignore: cast_nullable_to_non_nullable
as List<GamePoint>,
  ));
}


}

/// @nodoc


class GameStatePlaying implements GameState {
  const GameStatePlaying({required final  List<GamePoint> table, required this.playerTour}): _table = table;
  

 final  List<GamePoint> _table;
@override List<GamePoint> get table {
  if (_table is EqualUnmodifiableListView) return _table;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_table);
}

 final  GamePlayer playerTour;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStatePlayingCopyWith<GameStatePlaying> get copyWith => _$GameStatePlayingCopyWithImpl<GameStatePlaying>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStatePlaying&&const DeepCollectionEquality().equals(other._table, _table)&&(identical(other.playerTour, playerTour) || other.playerTour == playerTour));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_table),playerTour);

@override
String toString() {
  return 'GameState.playing(table: $table, playerTour: $playerTour)';
}


}

/// @nodoc
abstract mixin class $GameStatePlayingCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory $GameStatePlayingCopyWith(GameStatePlaying value, $Res Function(GameStatePlaying) _then) = _$GameStatePlayingCopyWithImpl;
@override @useResult
$Res call({
 List<GamePoint> table, GamePlayer playerTour
});




}
/// @nodoc
class _$GameStatePlayingCopyWithImpl<$Res>
    implements $GameStatePlayingCopyWith<$Res> {
  _$GameStatePlayingCopyWithImpl(this._self, this._then);

  final GameStatePlaying _self;
  final $Res Function(GameStatePlaying) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? table = null,Object? playerTour = null,}) {
  return _then(GameStatePlaying(
table: null == table ? _self._table : table // ignore: cast_nullable_to_non_nullable
as List<GamePoint>,playerTour: null == playerTour ? _self.playerTour : playerTour // ignore: cast_nullable_to_non_nullable
as GamePlayer,
  ));
}


}

/// @nodoc


class GameStateEnded implements GameState {
  const GameStateEnded({required final  List<GamePoint> table, this.playerWinner}): _table = table;
  

 final  List<GamePoint> _table;
@override List<GamePoint> get table {
  if (_table is EqualUnmodifiableListView) return _table;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_table);
}

 final  GamePlayer? playerWinner;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateEndedCopyWith<GameStateEnded> get copyWith => _$GameStateEndedCopyWithImpl<GameStateEnded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStateEnded&&const DeepCollectionEquality().equals(other._table, _table)&&(identical(other.playerWinner, playerWinner) || other.playerWinner == playerWinner));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_table),playerWinner);

@override
String toString() {
  return 'GameState.ended(table: $table, playerWinner: $playerWinner)';
}


}

/// @nodoc
abstract mixin class $GameStateEndedCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory $GameStateEndedCopyWith(GameStateEnded value, $Res Function(GameStateEnded) _then) = _$GameStateEndedCopyWithImpl;
@override @useResult
$Res call({
 List<GamePoint> table, GamePlayer? playerWinner
});




}
/// @nodoc
class _$GameStateEndedCopyWithImpl<$Res>
    implements $GameStateEndedCopyWith<$Res> {
  _$GameStateEndedCopyWithImpl(this._self, this._then);

  final GameStateEnded _self;
  final $Res Function(GameStateEnded) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? table = null,Object? playerWinner = freezed,}) {
  return _then(GameStateEnded(
table: null == table ? _self._table : table // ignore: cast_nullable_to_non_nullable
as List<GamePoint>,playerWinner: freezed == playerWinner ? _self.playerWinner : playerWinner // ignore: cast_nullable_to_non_nullable
as GamePlayer?,
  ));
}


}

// dart format on
