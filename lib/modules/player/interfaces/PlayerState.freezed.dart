// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PlayerState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerState {

 List<GamePoint> get points; bool get isPlayerTour;
/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerStateCopyWith<PlayerState> get copyWith => _$PlayerStateCopyWithImpl<PlayerState>(this as PlayerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerState&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.isPlayerTour, isPlayerTour) || other.isPlayerTour == isPlayerTour));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(points),isPlayerTour);

@override
String toString() {
  return 'PlayerState(points: $points, isPlayerTour: $isPlayerTour)';
}


}

/// @nodoc
abstract mixin class $PlayerStateCopyWith<$Res>  {
  factory $PlayerStateCopyWith(PlayerState value, $Res Function(PlayerState) _then) = _$PlayerStateCopyWithImpl;
@useResult
$Res call({
 List<GamePoint> points, bool isPlayerTour
});




}
/// @nodoc
class _$PlayerStateCopyWithImpl<$Res>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._self, this._then);

  final PlayerState _self;
  final $Res Function(PlayerState) _then;

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,Object? isPlayerTour = null,}) {
  return _then(_self.copyWith(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<GamePoint>,isPlayerTour: null == isPlayerTour ? _self.isPlayerTour : isPlayerTour // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _PlayerState implements PlayerState {
  const _PlayerState({final  List<GamePoint> points = const [], this.isPlayerTour = false}): _points = points;
  

 final  List<GamePoint> _points;
@override@JsonKey() List<GamePoint> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override@JsonKey() final  bool isPlayerTour;

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerStateCopyWith<_PlayerState> get copyWith => __$PlayerStateCopyWithImpl<_PlayerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerState&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.isPlayerTour, isPlayerTour) || other.isPlayerTour == isPlayerTour));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_points),isPlayerTour);

@override
String toString() {
  return 'PlayerState(points: $points, isPlayerTour: $isPlayerTour)';
}


}

/// @nodoc
abstract mixin class _$PlayerStateCopyWith<$Res> implements $PlayerStateCopyWith<$Res> {
  factory _$PlayerStateCopyWith(_PlayerState value, $Res Function(_PlayerState) _then) = __$PlayerStateCopyWithImpl;
@override @useResult
$Res call({
 List<GamePoint> points, bool isPlayerTour
});




}
/// @nodoc
class __$PlayerStateCopyWithImpl<$Res>
    implements _$PlayerStateCopyWith<$Res> {
  __$PlayerStateCopyWithImpl(this._self, this._then);

  final _PlayerState _self;
  final $Res Function(_PlayerState) _then;

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,Object? isPlayerTour = null,}) {
  return _then(_PlayerState(
points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<GamePoint>,isPlayerTour: null == isPlayerTour ? _self.isPlayerTour : isPlayerTour // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
