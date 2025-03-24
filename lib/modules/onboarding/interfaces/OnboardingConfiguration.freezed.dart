// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'OnboardingConfiguration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingButtonAction {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingButtonAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingButtonAction()';
}


}

/// @nodoc
class $OnboardingButtonActionCopyWith<$Res>  {
$OnboardingButtonActionCopyWith(OnboardingButtonAction _, $Res Function(OnboardingButtonAction) __);
}


/// @nodoc


class OnboardingButtonActionNextStep implements OnboardingButtonAction {
  const OnboardingButtonActionNextStep({required this.nextStep});
  

 final  OnboardingSteps nextStep;

/// Create a copy of OnboardingButtonAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingButtonActionNextStepCopyWith<OnboardingButtonActionNextStep> get copyWith => _$OnboardingButtonActionNextStepCopyWithImpl<OnboardingButtonActionNextStep>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingButtonActionNextStep&&(identical(other.nextStep, nextStep) || other.nextStep == nextStep));
}


@override
int get hashCode => Object.hash(runtimeType,nextStep);

@override
String toString() {
  return 'OnboardingButtonAction.nextStep(nextStep: $nextStep)';
}


}

/// @nodoc
abstract mixin class $OnboardingButtonActionNextStepCopyWith<$Res> implements $OnboardingButtonActionCopyWith<$Res> {
  factory $OnboardingButtonActionNextStepCopyWith(OnboardingButtonActionNextStep value, $Res Function(OnboardingButtonActionNextStep) _then) = _$OnboardingButtonActionNextStepCopyWithImpl;
@useResult
$Res call({
 OnboardingSteps nextStep
});




}
/// @nodoc
class _$OnboardingButtonActionNextStepCopyWithImpl<$Res>
    implements $OnboardingButtonActionNextStepCopyWith<$Res> {
  _$OnboardingButtonActionNextStepCopyWithImpl(this._self, this._then);

  final OnboardingButtonActionNextStep _self;
  final $Res Function(OnboardingButtonActionNextStep) _then;

/// Create a copy of OnboardingButtonAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nextStep = null,}) {
  return _then(OnboardingButtonActionNextStep(
nextStep: null == nextStep ? _self.nextStep : nextStep // ignore: cast_nullable_to_non_nullable
as OnboardingSteps,
  ));
}


}

/// @nodoc


class OnboardingButtonActionStartGame implements OnboardingButtonAction {
  const OnboardingButtonActionStartGame({required this.configuration});
  

 final  GameConfiguration configuration;

/// Create a copy of OnboardingButtonAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingButtonActionStartGameCopyWith<OnboardingButtonActionStartGame> get copyWith => _$OnboardingButtonActionStartGameCopyWithImpl<OnboardingButtonActionStartGame>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingButtonActionStartGame&&(identical(other.configuration, configuration) || other.configuration == configuration));
}


@override
int get hashCode => Object.hash(runtimeType,configuration);

@override
String toString() {
  return 'OnboardingButtonAction.startGame(configuration: $configuration)';
}


}

/// @nodoc
abstract mixin class $OnboardingButtonActionStartGameCopyWith<$Res> implements $OnboardingButtonActionCopyWith<$Res> {
  factory $OnboardingButtonActionStartGameCopyWith(OnboardingButtonActionStartGame value, $Res Function(OnboardingButtonActionStartGame) _then) = _$OnboardingButtonActionStartGameCopyWithImpl;
@useResult
$Res call({
 GameConfiguration configuration
});


$GameConfigurationCopyWith<$Res> get configuration;

}
/// @nodoc
class _$OnboardingButtonActionStartGameCopyWithImpl<$Res>
    implements $OnboardingButtonActionStartGameCopyWith<$Res> {
  _$OnboardingButtonActionStartGameCopyWithImpl(this._self, this._then);

  final OnboardingButtonActionStartGame _self;
  final $Res Function(OnboardingButtonActionStartGame) _then;

/// Create a copy of OnboardingButtonAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? configuration = null,}) {
  return _then(OnboardingButtonActionStartGame(
configuration: null == configuration ? _self.configuration : configuration // ignore: cast_nullable_to_non_nullable
as GameConfiguration,
  ));
}

/// Create a copy of OnboardingButtonAction
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


class OnboardingButtonActionNone implements OnboardingButtonAction {
  const OnboardingButtonActionNone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingButtonActionNone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingButtonAction.none()';
}


}




/// @nodoc
mixin _$OnboardingStepConfiguration {

 OnboardingSteps get step; List<OnboardingButtonConfiguration> get buttons;
/// Create a copy of OnboardingStepConfiguration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingStepConfigurationCopyWith<OnboardingStepConfiguration> get copyWith => _$OnboardingStepConfigurationCopyWithImpl<OnboardingStepConfiguration>(this as OnboardingStepConfiguration, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingStepConfiguration&&(identical(other.step, step) || other.step == step)&&const DeepCollectionEquality().equals(other.buttons, buttons));
}


@override
int get hashCode => Object.hash(runtimeType,step,const DeepCollectionEquality().hash(buttons));

@override
String toString() {
  return 'OnboardingStepConfiguration(step: $step, buttons: $buttons)';
}


}

/// @nodoc
abstract mixin class $OnboardingStepConfigurationCopyWith<$Res>  {
  factory $OnboardingStepConfigurationCopyWith(OnboardingStepConfiguration value, $Res Function(OnboardingStepConfiguration) _then) = _$OnboardingStepConfigurationCopyWithImpl;
@useResult
$Res call({
 OnboardingSteps step, List<OnboardingButtonConfiguration> buttons
});




}
/// @nodoc
class _$OnboardingStepConfigurationCopyWithImpl<$Res>
    implements $OnboardingStepConfigurationCopyWith<$Res> {
  _$OnboardingStepConfigurationCopyWithImpl(this._self, this._then);

  final OnboardingStepConfiguration _self;
  final $Res Function(OnboardingStepConfiguration) _then;

/// Create a copy of OnboardingStepConfiguration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? buttons = null,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as OnboardingSteps,buttons: null == buttons ? _self.buttons : buttons // ignore: cast_nullable_to_non_nullable
as List<OnboardingButtonConfiguration>,
  ));
}

}


/// @nodoc


class _OnboardingStepConfiguration implements OnboardingStepConfiguration {
  const _OnboardingStepConfiguration({required this.step, required final  List<OnboardingButtonConfiguration> buttons}): _buttons = buttons;
  

@override final  OnboardingSteps step;
 final  List<OnboardingButtonConfiguration> _buttons;
@override List<OnboardingButtonConfiguration> get buttons {
  if (_buttons is EqualUnmodifiableListView) return _buttons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_buttons);
}


/// Create a copy of OnboardingStepConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingStepConfigurationCopyWith<_OnboardingStepConfiguration> get copyWith => __$OnboardingStepConfigurationCopyWithImpl<_OnboardingStepConfiguration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingStepConfiguration&&(identical(other.step, step) || other.step == step)&&const DeepCollectionEquality().equals(other._buttons, _buttons));
}


@override
int get hashCode => Object.hash(runtimeType,step,const DeepCollectionEquality().hash(_buttons));

@override
String toString() {
  return 'OnboardingStepConfiguration(step: $step, buttons: $buttons)';
}


}

/// @nodoc
abstract mixin class _$OnboardingStepConfigurationCopyWith<$Res> implements $OnboardingStepConfigurationCopyWith<$Res> {
  factory _$OnboardingStepConfigurationCopyWith(_OnboardingStepConfiguration value, $Res Function(_OnboardingStepConfiguration) _then) = __$OnboardingStepConfigurationCopyWithImpl;
@override @useResult
$Res call({
 OnboardingSteps step, List<OnboardingButtonConfiguration> buttons
});




}
/// @nodoc
class __$OnboardingStepConfigurationCopyWithImpl<$Res>
    implements _$OnboardingStepConfigurationCopyWith<$Res> {
  __$OnboardingStepConfigurationCopyWithImpl(this._self, this._then);

  final _OnboardingStepConfiguration _self;
  final $Res Function(_OnboardingStepConfiguration) _then;

/// Create a copy of OnboardingStepConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? buttons = null,}) {
  return _then(_OnboardingStepConfiguration(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as OnboardingSteps,buttons: null == buttons ? _self._buttons : buttons // ignore: cast_nullable_to_non_nullable
as List<OnboardingButtonConfiguration>,
  ));
}


}

/// @nodoc
mixin _$OnboardingButtonConfiguration {

 OnboardingButtonType get type; OnboardingButtonAction get action; bool get isEnabled;
/// Create a copy of OnboardingButtonConfiguration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingButtonConfigurationCopyWith<OnboardingButtonConfiguration> get copyWith => _$OnboardingButtonConfigurationCopyWithImpl<OnboardingButtonConfiguration>(this as OnboardingButtonConfiguration, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingButtonConfiguration&&(identical(other.type, type) || other.type == type)&&(identical(other.action, action) || other.action == action)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,type,action,isEnabled);

@override
String toString() {
  return 'OnboardingButtonConfiguration(type: $type, action: $action, isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class $OnboardingButtonConfigurationCopyWith<$Res>  {
  factory $OnboardingButtonConfigurationCopyWith(OnboardingButtonConfiguration value, $Res Function(OnboardingButtonConfiguration) _then) = _$OnboardingButtonConfigurationCopyWithImpl;
@useResult
$Res call({
 OnboardingButtonType type, OnboardingButtonAction action, bool isEnabled
});


$OnboardingButtonActionCopyWith<$Res> get action;

}
/// @nodoc
class _$OnboardingButtonConfigurationCopyWithImpl<$Res>
    implements $OnboardingButtonConfigurationCopyWith<$Res> {
  _$OnboardingButtonConfigurationCopyWithImpl(this._self, this._then);

  final OnboardingButtonConfiguration _self;
  final $Res Function(OnboardingButtonConfiguration) _then;

/// Create a copy of OnboardingButtonConfiguration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? action = null,Object? isEnabled = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OnboardingButtonType,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as OnboardingButtonAction,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OnboardingButtonConfiguration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingButtonActionCopyWith<$Res> get action {
  
  return $OnboardingButtonActionCopyWith<$Res>(_self.action, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}


/// @nodoc


class _OnboardingButtonConfiguration implements OnboardingButtonConfiguration {
  const _OnboardingButtonConfiguration({required this.type, required this.action, this.isEnabled = true});
  

@override final  OnboardingButtonType type;
@override final  OnboardingButtonAction action;
@override@JsonKey() final  bool isEnabled;

/// Create a copy of OnboardingButtonConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingButtonConfigurationCopyWith<_OnboardingButtonConfiguration> get copyWith => __$OnboardingButtonConfigurationCopyWithImpl<_OnboardingButtonConfiguration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingButtonConfiguration&&(identical(other.type, type) || other.type == type)&&(identical(other.action, action) || other.action == action)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,type,action,isEnabled);

@override
String toString() {
  return 'OnboardingButtonConfiguration(type: $type, action: $action, isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class _$OnboardingButtonConfigurationCopyWith<$Res> implements $OnboardingButtonConfigurationCopyWith<$Res> {
  factory _$OnboardingButtonConfigurationCopyWith(_OnboardingButtonConfiguration value, $Res Function(_OnboardingButtonConfiguration) _then) = __$OnboardingButtonConfigurationCopyWithImpl;
@override @useResult
$Res call({
 OnboardingButtonType type, OnboardingButtonAction action, bool isEnabled
});


@override $OnboardingButtonActionCopyWith<$Res> get action;

}
/// @nodoc
class __$OnboardingButtonConfigurationCopyWithImpl<$Res>
    implements _$OnboardingButtonConfigurationCopyWith<$Res> {
  __$OnboardingButtonConfigurationCopyWithImpl(this._self, this._then);

  final _OnboardingButtonConfiguration _self;
  final $Res Function(_OnboardingButtonConfiguration) _then;

/// Create a copy of OnboardingButtonConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? action = null,Object? isEnabled = null,}) {
  return _then(_OnboardingButtonConfiguration(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OnboardingButtonType,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as OnboardingButtonAction,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OnboardingButtonConfiguration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingButtonActionCopyWith<$Res> get action {
  
  return $OnboardingButtonActionCopyWith<$Res>(_self.action, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}

// dart format on
