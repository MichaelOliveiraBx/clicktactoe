// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PlayerType.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerType {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerType);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerType()';
}


}

/// @nodoc
class $PlayerTypeCopyWith<$Res>  {
$PlayerTypeCopyWith(PlayerType _, $Res Function(PlayerType) __);
}


/// @nodoc


class PlayerTypeLocal implements PlayerType {
  const PlayerTypeLocal();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerTypeLocal);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerType.local()';
}


}




/// @nodoc


class PlayerTypeAI implements PlayerType {
  const PlayerTypeAI();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerTypeAI);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerType.ai()';
}


}




/// @nodoc


class PlayerTypeRemote implements PlayerType {
  const PlayerTypeRemote({required this.roomId});
  

 final  String roomId;

/// Create a copy of PlayerType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerTypeRemoteCopyWith<PlayerTypeRemote> get copyWith => _$PlayerTypeRemoteCopyWithImpl<PlayerTypeRemote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerTypeRemote&&(identical(other.roomId, roomId) || other.roomId == roomId));
}


@override
int get hashCode => Object.hash(runtimeType,roomId);

@override
String toString() {
  return 'PlayerType.remote(roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class $PlayerTypeRemoteCopyWith<$Res> implements $PlayerTypeCopyWith<$Res> {
  factory $PlayerTypeRemoteCopyWith(PlayerTypeRemote value, $Res Function(PlayerTypeRemote) _then) = _$PlayerTypeRemoteCopyWithImpl;
@useResult
$Res call({
 String roomId
});




}
/// @nodoc
class _$PlayerTypeRemoteCopyWithImpl<$Res>
    implements $PlayerTypeRemoteCopyWith<$Res> {
  _$PlayerTypeRemoteCopyWithImpl(this._self, this._then);

  final PlayerTypeRemote _self;
  final $Res Function(PlayerTypeRemote) _then;

/// Create a copy of PlayerType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,}) {
  return _then(PlayerTypeRemote(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
