// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GamePoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GamePointCoordinates {

 int get x; int get y;
/// Create a copy of GamePointCoordinates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GamePointCoordinatesCopyWith<GamePointCoordinates> get copyWith => _$GamePointCoordinatesCopyWithImpl<GamePointCoordinates>(this as GamePointCoordinates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GamePointCoordinates&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}


@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'GamePointCoordinates(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $GamePointCoordinatesCopyWith<$Res>  {
  factory $GamePointCoordinatesCopyWith(GamePointCoordinates value, $Res Function(GamePointCoordinates) _then) = _$GamePointCoordinatesCopyWithImpl;
@useResult
$Res call({
 int x, int y
});




}
/// @nodoc
class _$GamePointCoordinatesCopyWithImpl<$Res>
    implements $GamePointCoordinatesCopyWith<$Res> {
  _$GamePointCoordinatesCopyWithImpl(this._self, this._then);

  final GamePointCoordinates _self;
  final $Res Function(GamePointCoordinates) _then;

/// Create a copy of GamePointCoordinates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _GamePointCoordinates implements GamePointCoordinates {
  const _GamePointCoordinates({required this.x, required this.y});
  

@override final  int x;
@override final  int y;

/// Create a copy of GamePointCoordinates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GamePointCoordinatesCopyWith<_GamePointCoordinates> get copyWith => __$GamePointCoordinatesCopyWithImpl<_GamePointCoordinates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GamePointCoordinates&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}


@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'GamePointCoordinates(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$GamePointCoordinatesCopyWith<$Res> implements $GamePointCoordinatesCopyWith<$Res> {
  factory _$GamePointCoordinatesCopyWith(_GamePointCoordinates value, $Res Function(_GamePointCoordinates) _then) = __$GamePointCoordinatesCopyWithImpl;
@override @useResult
$Res call({
 int x, int y
});




}
/// @nodoc
class __$GamePointCoordinatesCopyWithImpl<$Res>
    implements _$GamePointCoordinatesCopyWith<$Res> {
  __$GamePointCoordinatesCopyWithImpl(this._self, this._then);

  final _GamePointCoordinates _self;
  final $Res Function(_GamePointCoordinates) _then;

/// Create a copy of GamePointCoordinates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_GamePointCoordinates(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$GamePoint {

 GamePointStatus get status; GamePlayer get player; GamePointCoordinates get coordinates;
/// Create a copy of GamePoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GamePointCopyWith<GamePoint> get copyWith => _$GamePointCopyWithImpl<GamePoint>(this as GamePoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GamePoint&&(identical(other.status, status) || other.status == status)&&(identical(other.player, player) || other.player == player)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates));
}


@override
int get hashCode => Object.hash(runtimeType,status,player,coordinates);

@override
String toString() {
  return 'GamePoint(status: $status, player: $player, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class $GamePointCopyWith<$Res>  {
  factory $GamePointCopyWith(GamePoint value, $Res Function(GamePoint) _then) = _$GamePointCopyWithImpl;
@useResult
$Res call({
 GamePointStatus status, GamePlayer player, GamePointCoordinates coordinates
});


$GamePointCoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class _$GamePointCopyWithImpl<$Res>
    implements $GamePointCopyWith<$Res> {
  _$GamePointCopyWithImpl(this._self, this._then);

  final GamePoint _self;
  final $Res Function(GamePoint) _then;

/// Create a copy of GamePoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? player = null,Object? coordinates = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GamePointStatus,player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as GamePlayer,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as GamePointCoordinates,
  ));
}
/// Create a copy of GamePoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GamePointCoordinatesCopyWith<$Res> get coordinates {
  
  return $GamePointCoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// @nodoc


class _GamePoint implements GamePoint {
  const _GamePoint({this.status = GamePointStatus.none, required this.player, required this.coordinates});
  

@override@JsonKey() final  GamePointStatus status;
@override final  GamePlayer player;
@override final  GamePointCoordinates coordinates;

/// Create a copy of GamePoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GamePointCopyWith<_GamePoint> get copyWith => __$GamePointCopyWithImpl<_GamePoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GamePoint&&(identical(other.status, status) || other.status == status)&&(identical(other.player, player) || other.player == player)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates));
}


@override
int get hashCode => Object.hash(runtimeType,status,player,coordinates);

@override
String toString() {
  return 'GamePoint(status: $status, player: $player, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class _$GamePointCopyWith<$Res> implements $GamePointCopyWith<$Res> {
  factory _$GamePointCopyWith(_GamePoint value, $Res Function(_GamePoint) _then) = __$GamePointCopyWithImpl;
@override @useResult
$Res call({
 GamePointStatus status, GamePlayer player, GamePointCoordinates coordinates
});


@override $GamePointCoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class __$GamePointCopyWithImpl<$Res>
    implements _$GamePointCopyWith<$Res> {
  __$GamePointCopyWithImpl(this._self, this._then);

  final _GamePoint _self;
  final $Res Function(_GamePoint) _then;

/// Create a copy of GamePoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? player = null,Object? coordinates = null,}) {
  return _then(_GamePoint(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GamePointStatus,player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as GamePlayer,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as GamePointCoordinates,
  ));
}

/// Create a copy of GamePoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GamePointCoordinatesCopyWith<$Res> get coordinates {
  
  return $GamePointCoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}

// dart format on
