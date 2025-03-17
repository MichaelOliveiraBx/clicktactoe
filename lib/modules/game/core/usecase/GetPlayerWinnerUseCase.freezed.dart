// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetPlayerWinnerUseCase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WinnerData {

 GamePlayer get playerWinner; List<GamePoint> get winnerPlayerPoints;
/// Create a copy of WinnerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WinnerDataCopyWith<WinnerData> get copyWith => _$WinnerDataCopyWithImpl<WinnerData>(this as WinnerData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WinnerData&&(identical(other.playerWinner, playerWinner) || other.playerWinner == playerWinner)&&const DeepCollectionEquality().equals(other.winnerPlayerPoints, winnerPlayerPoints));
}


@override
int get hashCode => Object.hash(runtimeType,playerWinner,const DeepCollectionEquality().hash(winnerPlayerPoints));

@override
String toString() {
  return 'WinnerData(playerWinner: $playerWinner, winnerPlayerPoints: $winnerPlayerPoints)';
}


}

/// @nodoc
abstract mixin class $WinnerDataCopyWith<$Res>  {
  factory $WinnerDataCopyWith(WinnerData value, $Res Function(WinnerData) _then) = _$WinnerDataCopyWithImpl;
@useResult
$Res call({
 GamePlayer playerWinner, List<GamePoint> winnerPlayerPoints
});




}
/// @nodoc
class _$WinnerDataCopyWithImpl<$Res>
    implements $WinnerDataCopyWith<$Res> {
  _$WinnerDataCopyWithImpl(this._self, this._then);

  final WinnerData _self;
  final $Res Function(WinnerData) _then;

/// Create a copy of WinnerData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerWinner = null,Object? winnerPlayerPoints = null,}) {
  return _then(_self.copyWith(
playerWinner: null == playerWinner ? _self.playerWinner : playerWinner // ignore: cast_nullable_to_non_nullable
as GamePlayer,winnerPlayerPoints: null == winnerPlayerPoints ? _self.winnerPlayerPoints : winnerPlayerPoints // ignore: cast_nullable_to_non_nullable
as List<GamePoint>,
  ));
}

}


/// @nodoc


class _WinnerData implements WinnerData {
   _WinnerData({required this.playerWinner, required final  List<GamePoint> winnerPlayerPoints}): _winnerPlayerPoints = winnerPlayerPoints;
  

@override final  GamePlayer playerWinner;
 final  List<GamePoint> _winnerPlayerPoints;
@override List<GamePoint> get winnerPlayerPoints {
  if (_winnerPlayerPoints is EqualUnmodifiableListView) return _winnerPlayerPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_winnerPlayerPoints);
}


/// Create a copy of WinnerData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WinnerDataCopyWith<_WinnerData> get copyWith => __$WinnerDataCopyWithImpl<_WinnerData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WinnerData&&(identical(other.playerWinner, playerWinner) || other.playerWinner == playerWinner)&&const DeepCollectionEquality().equals(other._winnerPlayerPoints, _winnerPlayerPoints));
}


@override
int get hashCode => Object.hash(runtimeType,playerWinner,const DeepCollectionEquality().hash(_winnerPlayerPoints));

@override
String toString() {
  return 'WinnerData(playerWinner: $playerWinner, winnerPlayerPoints: $winnerPlayerPoints)';
}


}

/// @nodoc
abstract mixin class _$WinnerDataCopyWith<$Res> implements $WinnerDataCopyWith<$Res> {
  factory _$WinnerDataCopyWith(_WinnerData value, $Res Function(_WinnerData) _then) = __$WinnerDataCopyWithImpl;
@override @useResult
$Res call({
 GamePlayer playerWinner, List<GamePoint> winnerPlayerPoints
});




}
/// @nodoc
class __$WinnerDataCopyWithImpl<$Res>
    implements _$WinnerDataCopyWith<$Res> {
  __$WinnerDataCopyWithImpl(this._self, this._then);

  final _WinnerData _self;
  final $Res Function(_WinnerData) _then;

/// Create a copy of WinnerData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playerWinner = null,Object? winnerPlayerPoints = null,}) {
  return _then(_WinnerData(
playerWinner: null == playerWinner ? _self.playerWinner : playerWinner // ignore: cast_nullable_to_non_nullable
as GamePlayer,winnerPlayerPoints: null == winnerPlayerPoints ? _self._winnerPlayerPoints : winnerPlayerPoints // ignore: cast_nullable_to_non_nullable
as List<GamePoint>,
  ));
}


}

// dart format on
