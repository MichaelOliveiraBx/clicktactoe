// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'OnboardingStateHandler.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingStateHandlerAction {

 GameConfiguration get configuration;
/// Create a copy of OnboardingStateHandlerAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingStateHandlerActionCopyWith<OnboardingStateHandlerAction> get copyWith => _$OnboardingStateHandlerActionCopyWithImpl<OnboardingStateHandlerAction>(this as OnboardingStateHandlerAction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingStateHandlerAction&&(identical(other.configuration, configuration) || other.configuration == configuration));
}


@override
int get hashCode => Object.hash(runtimeType,configuration);

@override
String toString() {
  return 'OnboardingStateHandlerAction(configuration: $configuration)';
}


}

/// @nodoc
abstract mixin class $OnboardingStateHandlerActionCopyWith<$Res>  {
  factory $OnboardingStateHandlerActionCopyWith(OnboardingStateHandlerAction value, $Res Function(OnboardingStateHandlerAction) _then) = _$OnboardingStateHandlerActionCopyWithImpl;
@useResult
$Res call({
 GameConfiguration configuration
});


$GameConfigurationCopyWith<$Res> get configuration;

}
/// @nodoc
class _$OnboardingStateHandlerActionCopyWithImpl<$Res>
    implements $OnboardingStateHandlerActionCopyWith<$Res> {
  _$OnboardingStateHandlerActionCopyWithImpl(this._self, this._then);

  final OnboardingStateHandlerAction _self;
  final $Res Function(OnboardingStateHandlerAction) _then;

/// Create a copy of OnboardingStateHandlerAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? configuration = null,}) {
  return _then(_self.copyWith(
configuration: null == configuration ? _self.configuration : configuration // ignore: cast_nullable_to_non_nullable
as GameConfiguration,
  ));
}
/// Create a copy of OnboardingStateHandlerAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameConfigurationCopyWith<$Res> get configuration {
  
  return $GameConfigurationCopyWith<$Res>(_self.configuration, (value) {
    return _then(_self.copyWith(configuration: value));
  });
}
}


/// @nodoc


class OnboardingStateHandlerActionStartGame implements OnboardingStateHandlerAction {
  const OnboardingStateHandlerActionStartGame({required this.configuration});
  

@override final  GameConfiguration configuration;

/// Create a copy of OnboardingStateHandlerAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingStateHandlerActionStartGameCopyWith<OnboardingStateHandlerActionStartGame> get copyWith => _$OnboardingStateHandlerActionStartGameCopyWithImpl<OnboardingStateHandlerActionStartGame>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingStateHandlerActionStartGame&&(identical(other.configuration, configuration) || other.configuration == configuration));
}


@override
int get hashCode => Object.hash(runtimeType,configuration);

@override
String toString() {
  return 'OnboardingStateHandlerAction.startGame(configuration: $configuration)';
}


}

/// @nodoc
abstract mixin class $OnboardingStateHandlerActionStartGameCopyWith<$Res> implements $OnboardingStateHandlerActionCopyWith<$Res> {
  factory $OnboardingStateHandlerActionStartGameCopyWith(OnboardingStateHandlerActionStartGame value, $Res Function(OnboardingStateHandlerActionStartGame) _then) = _$OnboardingStateHandlerActionStartGameCopyWithImpl;
@override @useResult
$Res call({
 GameConfiguration configuration
});


@override $GameConfigurationCopyWith<$Res> get configuration;

}
/// @nodoc
class _$OnboardingStateHandlerActionStartGameCopyWithImpl<$Res>
    implements $OnboardingStateHandlerActionStartGameCopyWith<$Res> {
  _$OnboardingStateHandlerActionStartGameCopyWithImpl(this._self, this._then);

  final OnboardingStateHandlerActionStartGame _self;
  final $Res Function(OnboardingStateHandlerActionStartGame) _then;

/// Create a copy of OnboardingStateHandlerAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? configuration = null,}) {
  return _then(OnboardingStateHandlerActionStartGame(
configuration: null == configuration ? _self.configuration : configuration // ignore: cast_nullable_to_non_nullable
as GameConfiguration,
  ));
}

/// Create a copy of OnboardingStateHandlerAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameConfigurationCopyWith<$Res> get configuration {
  
  return $GameConfigurationCopyWith<$Res>(_self.configuration, (value) {
    return _then(_self.copyWith(configuration: value));
  });
}
}

/// @nodoc
mixin _$OnboardingStateHandlerUiState {

 OnboardingStepConfiguration get step; bool get displayBackButton;
/// Create a copy of OnboardingStateHandlerUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingStateHandlerUiStateCopyWith<OnboardingStateHandlerUiState> get copyWith => _$OnboardingStateHandlerUiStateCopyWithImpl<OnboardingStateHandlerUiState>(this as OnboardingStateHandlerUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingStateHandlerUiState&&(identical(other.step, step) || other.step == step)&&(identical(other.displayBackButton, displayBackButton) || other.displayBackButton == displayBackButton));
}


@override
int get hashCode => Object.hash(runtimeType,step,displayBackButton);

@override
String toString() {
  return 'OnboardingStateHandlerUiState(step: $step, displayBackButton: $displayBackButton)';
}


}

/// @nodoc
abstract mixin class $OnboardingStateHandlerUiStateCopyWith<$Res>  {
  factory $OnboardingStateHandlerUiStateCopyWith(OnboardingStateHandlerUiState value, $Res Function(OnboardingStateHandlerUiState) _then) = _$OnboardingStateHandlerUiStateCopyWithImpl;
@useResult
$Res call({
 OnboardingStepConfiguration step, bool displayBackButton
});


$OnboardingStepConfigurationCopyWith<$Res> get step;

}
/// @nodoc
class _$OnboardingStateHandlerUiStateCopyWithImpl<$Res>
    implements $OnboardingStateHandlerUiStateCopyWith<$Res> {
  _$OnboardingStateHandlerUiStateCopyWithImpl(this._self, this._then);

  final OnboardingStateHandlerUiState _self;
  final $Res Function(OnboardingStateHandlerUiState) _then;

/// Create a copy of OnboardingStateHandlerUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? displayBackButton = null,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as OnboardingStepConfiguration,displayBackButton: null == displayBackButton ? _self.displayBackButton : displayBackButton // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OnboardingStateHandlerUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingStepConfigurationCopyWith<$Res> get step {
  
  return $OnboardingStepConfigurationCopyWith<$Res>(_self.step, (value) {
    return _then(_self.copyWith(step: value));
  });
}
}


/// @nodoc


class _OnboardingStateHandlerUiState implements OnboardingStateHandlerUiState {
   _OnboardingStateHandlerUiState({required this.step, required this.displayBackButton});
  

@override final  OnboardingStepConfiguration step;
@override final  bool displayBackButton;

/// Create a copy of OnboardingStateHandlerUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingStateHandlerUiStateCopyWith<_OnboardingStateHandlerUiState> get copyWith => __$OnboardingStateHandlerUiStateCopyWithImpl<_OnboardingStateHandlerUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingStateHandlerUiState&&(identical(other.step, step) || other.step == step)&&(identical(other.displayBackButton, displayBackButton) || other.displayBackButton == displayBackButton));
}


@override
int get hashCode => Object.hash(runtimeType,step,displayBackButton);

@override
String toString() {
  return 'OnboardingStateHandlerUiState(step: $step, displayBackButton: $displayBackButton)';
}


}

/// @nodoc
abstract mixin class _$OnboardingStateHandlerUiStateCopyWith<$Res> implements $OnboardingStateHandlerUiStateCopyWith<$Res> {
  factory _$OnboardingStateHandlerUiStateCopyWith(_OnboardingStateHandlerUiState value, $Res Function(_OnboardingStateHandlerUiState) _then) = __$OnboardingStateHandlerUiStateCopyWithImpl;
@override @useResult
$Res call({
 OnboardingStepConfiguration step, bool displayBackButton
});


@override $OnboardingStepConfigurationCopyWith<$Res> get step;

}
/// @nodoc
class __$OnboardingStateHandlerUiStateCopyWithImpl<$Res>
    implements _$OnboardingStateHandlerUiStateCopyWith<$Res> {
  __$OnboardingStateHandlerUiStateCopyWithImpl(this._self, this._then);

  final _OnboardingStateHandlerUiState _self;
  final $Res Function(_OnboardingStateHandlerUiState) _then;

/// Create a copy of OnboardingStateHandlerUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? displayBackButton = null,}) {
  return _then(_OnboardingStateHandlerUiState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as OnboardingStepConfiguration,displayBackButton: null == displayBackButton ? _self.displayBackButton : displayBackButton // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OnboardingStateHandlerUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingStepConfigurationCopyWith<$Res> get step {
  
  return $OnboardingStepConfigurationCopyWith<$Res>(_self.step, (value) {
    return _then(_self.copyWith(step: value));
  });
}
}

// dart format on
