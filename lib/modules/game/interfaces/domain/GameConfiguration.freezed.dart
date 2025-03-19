// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GameConfiguration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameConfiguration {

 PlayerType get player1Type; PlayerType get player2Type;
/// Create a copy of GameConfiguration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameConfigurationCopyWith<GameConfiguration> get copyWith => _$GameConfigurationCopyWithImpl<GameConfiguration>(this as GameConfiguration, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameConfiguration&&(identical(other.player1Type, player1Type) || other.player1Type == player1Type)&&(identical(other.player2Type, player2Type) || other.player2Type == player2Type));
}


@override
int get hashCode => Object.hash(runtimeType,player1Type,player2Type);

@override
String toString() {
  return 'GameConfiguration(player1Type: $player1Type, player2Type: $player2Type)';
}


}

/// @nodoc
abstract mixin class $GameConfigurationCopyWith<$Res>  {
  factory $GameConfigurationCopyWith(GameConfiguration value, $Res Function(GameConfiguration) _then) = _$GameConfigurationCopyWithImpl;
@useResult
$Res call({
 PlayerType player1Type, PlayerType player2Type
});


$PlayerTypeCopyWith<$Res> get player1Type;$PlayerTypeCopyWith<$Res> get player2Type;

}
/// @nodoc
class _$GameConfigurationCopyWithImpl<$Res>
    implements $GameConfigurationCopyWith<$Res> {
  _$GameConfigurationCopyWithImpl(this._self, this._then);

  final GameConfiguration _self;
  final $Res Function(GameConfiguration) _then;

/// Create a copy of GameConfiguration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? player1Type = null,Object? player2Type = null,}) {
  return _then(_self.copyWith(
player1Type: null == player1Type ? _self.player1Type : player1Type // ignore: cast_nullable_to_non_nullable
as PlayerType,player2Type: null == player2Type ? _self.player2Type : player2Type // ignore: cast_nullable_to_non_nullable
as PlayerType,
  ));
}
/// Create a copy of GameConfiguration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerTypeCopyWith<$Res> get player1Type {
  
  return $PlayerTypeCopyWith<$Res>(_self.player1Type, (value) {
    return _then(_self.copyWith(player1Type: value));
  });
}/// Create a copy of GameConfiguration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerTypeCopyWith<$Res> get player2Type {
  
  return $PlayerTypeCopyWith<$Res>(_self.player2Type, (value) {
    return _then(_self.copyWith(player2Type: value));
  });
}
}


/// @nodoc


class _GameConfiguration implements GameConfiguration {
  const _GameConfiguration({required this.player1Type, required this.player2Type});
  

@override final  PlayerType player1Type;
@override final  PlayerType player2Type;

/// Create a copy of GameConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameConfigurationCopyWith<_GameConfiguration> get copyWith => __$GameConfigurationCopyWithImpl<_GameConfiguration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameConfiguration&&(identical(other.player1Type, player1Type) || other.player1Type == player1Type)&&(identical(other.player2Type, player2Type) || other.player2Type == player2Type));
}


@override
int get hashCode => Object.hash(runtimeType,player1Type,player2Type);

@override
String toString() {
  return 'GameConfiguration(player1Type: $player1Type, player2Type: $player2Type)';
}


}

/// @nodoc
abstract mixin class _$GameConfigurationCopyWith<$Res> implements $GameConfigurationCopyWith<$Res> {
  factory _$GameConfigurationCopyWith(_GameConfiguration value, $Res Function(_GameConfiguration) _then) = __$GameConfigurationCopyWithImpl;
@override @useResult
$Res call({
 PlayerType player1Type, PlayerType player2Type
});


@override $PlayerTypeCopyWith<$Res> get player1Type;@override $PlayerTypeCopyWith<$Res> get player2Type;

}
/// @nodoc
class __$GameConfigurationCopyWithImpl<$Res>
    implements _$GameConfigurationCopyWith<$Res> {
  __$GameConfigurationCopyWithImpl(this._self, this._then);

  final _GameConfiguration _self;
  final $Res Function(_GameConfiguration) _then;

/// Create a copy of GameConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? player1Type = null,Object? player2Type = null,}) {
  return _then(_GameConfiguration(
player1Type: null == player1Type ? _self.player1Type : player1Type // ignore: cast_nullable_to_non_nullable
as PlayerType,player2Type: null == player2Type ? _self.player2Type : player2Type // ignore: cast_nullable_to_non_nullable
as PlayerType,
  ));
}

/// Create a copy of GameConfiguration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerTypeCopyWith<$Res> get player1Type {
  
  return $PlayerTypeCopyWith<$Res>(_self.player1Type, (value) {
    return _then(_self.copyWith(player1Type: value));
  });
}/// Create a copy of GameConfiguration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerTypeCopyWith<$Res> get player2Type {
  
  return $PlayerTypeCopyWith<$Res>(_self.player2Type, (value) {
    return _then(_self.copyWith(player2Type: value));
  });
}
}

// dart format on
