// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GameTableUiState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameTablePointUiState {

 GameTablePointType get type; bool get isWinning;
/// Create a copy of GameTablePointUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameTablePointUiStateCopyWith<GameTablePointUiState> get copyWith => _$GameTablePointUiStateCopyWithImpl<GameTablePointUiState>(this as GameTablePointUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameTablePointUiState&&(identical(other.type, type) || other.type == type)&&(identical(other.isWinning, isWinning) || other.isWinning == isWinning));
}


@override
int get hashCode => Object.hash(runtimeType,type,isWinning);

@override
String toString() {
  return 'GameTablePointUiState(type: $type, isWinning: $isWinning)';
}


}

/// @nodoc
abstract mixin class $GameTablePointUiStateCopyWith<$Res>  {
  factory $GameTablePointUiStateCopyWith(GameTablePointUiState value, $Res Function(GameTablePointUiState) _then) = _$GameTablePointUiStateCopyWithImpl;
@useResult
$Res call({
 GameTablePointType type, bool isWinning
});




}
/// @nodoc
class _$GameTablePointUiStateCopyWithImpl<$Res>
    implements $GameTablePointUiStateCopyWith<$Res> {
  _$GameTablePointUiStateCopyWithImpl(this._self, this._then);

  final GameTablePointUiState _self;
  final $Res Function(GameTablePointUiState) _then;

/// Create a copy of GameTablePointUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? isWinning = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GameTablePointType,isWinning: null == isWinning ? _self.isWinning : isWinning // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _GameTablePointUiState implements GameTablePointUiState {
  const _GameTablePointUiState({required this.type, required this.isWinning});
  

@override final  GameTablePointType type;
@override final  bool isWinning;

/// Create a copy of GameTablePointUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameTablePointUiStateCopyWith<_GameTablePointUiState> get copyWith => __$GameTablePointUiStateCopyWithImpl<_GameTablePointUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameTablePointUiState&&(identical(other.type, type) || other.type == type)&&(identical(other.isWinning, isWinning) || other.isWinning == isWinning));
}


@override
int get hashCode => Object.hash(runtimeType,type,isWinning);

@override
String toString() {
  return 'GameTablePointUiState(type: $type, isWinning: $isWinning)';
}


}

/// @nodoc
abstract mixin class _$GameTablePointUiStateCopyWith<$Res> implements $GameTablePointUiStateCopyWith<$Res> {
  factory _$GameTablePointUiStateCopyWith(_GameTablePointUiState value, $Res Function(_GameTablePointUiState) _then) = __$GameTablePointUiStateCopyWithImpl;
@override @useResult
$Res call({
 GameTablePointType type, bool isWinning
});




}
/// @nodoc
class __$GameTablePointUiStateCopyWithImpl<$Res>
    implements _$GameTablePointUiStateCopyWith<$Res> {
  __$GameTablePointUiStateCopyWithImpl(this._self, this._then);

  final _GameTablePointUiState _self;
  final $Res Function(_GameTablePointUiState) _then;

/// Create a copy of GameTablePointUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? isWinning = null,}) {
  return _then(_GameTablePointUiState(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GameTablePointType,isWinning: null == isWinning ? _self.isWinning : isWinning // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$GameTableUiState {

 List<List<GameTablePointUiState>> get table;
/// Create a copy of GameTableUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameTableUiStateCopyWith<GameTableUiState> get copyWith => _$GameTableUiStateCopyWithImpl<GameTableUiState>(this as GameTableUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameTableUiState&&const DeepCollectionEquality().equals(other.table, table));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(table));

@override
String toString() {
  return 'GameTableUiState(table: $table)';
}


}

/// @nodoc
abstract mixin class $GameTableUiStateCopyWith<$Res>  {
  factory $GameTableUiStateCopyWith(GameTableUiState value, $Res Function(GameTableUiState) _then) = _$GameTableUiStateCopyWithImpl;
@useResult
$Res call({
 List<List<GameTablePointUiState>> table
});




}
/// @nodoc
class _$GameTableUiStateCopyWithImpl<$Res>
    implements $GameTableUiStateCopyWith<$Res> {
  _$GameTableUiStateCopyWithImpl(this._self, this._then);

  final GameTableUiState _self;
  final $Res Function(GameTableUiState) _then;

/// Create a copy of GameTableUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? table = null,}) {
  return _then(_self.copyWith(
table: null == table ? _self.table : table // ignore: cast_nullable_to_non_nullable
as List<List<GameTablePointUiState>>,
  ));
}

}


/// @nodoc


class _GameTableUiState implements GameTableUiState {
  const _GameTableUiState({required final  List<List<GameTablePointUiState>> table}): _table = table;
  

 final  List<List<GameTablePointUiState>> _table;
@override List<List<GameTablePointUiState>> get table {
  if (_table is EqualUnmodifiableListView) return _table;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_table);
}


/// Create a copy of GameTableUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameTableUiStateCopyWith<_GameTableUiState> get copyWith => __$GameTableUiStateCopyWithImpl<_GameTableUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameTableUiState&&const DeepCollectionEquality().equals(other._table, _table));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_table));

@override
String toString() {
  return 'GameTableUiState(table: $table)';
}


}

/// @nodoc
abstract mixin class _$GameTableUiStateCopyWith<$Res> implements $GameTableUiStateCopyWith<$Res> {
  factory _$GameTableUiStateCopyWith(_GameTableUiState value, $Res Function(_GameTableUiState) _then) = __$GameTableUiStateCopyWithImpl;
@override @useResult
$Res call({
 List<List<GameTablePointUiState>> table
});




}
/// @nodoc
class __$GameTableUiStateCopyWithImpl<$Res>
    implements _$GameTableUiStateCopyWith<$Res> {
  __$GameTableUiStateCopyWithImpl(this._self, this._then);

  final _GameTableUiState _self;
  final $Res Function(_GameTableUiState) _then;

/// Create a copy of GameTableUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? table = null,}) {
  return _then(_GameTableUiState(
table: null == table ? _self._table : table // ignore: cast_nullable_to_non_nullable
as List<List<GameTablePointUiState>>,
  ));
}


}

// dart format on
