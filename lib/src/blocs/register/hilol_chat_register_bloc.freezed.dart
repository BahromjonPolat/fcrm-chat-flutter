// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hilol_chat_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HilolChatRegisterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HilolChatRegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HilolChatRegisterEvent()';
}


}

/// @nodoc
class $HilolChatRegisterEventCopyWith<$Res>  {
$HilolChatRegisterEventCopyWith(HilolChatRegisterEvent _, $Res Function(HilolChatRegisterEvent) __);
}


/// Adds pattern-matching-related methods to [HilolChatRegisterEvent].
extension HilolChatRegisterEventPatterns on HilolChatRegisterEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NameChanged value)?  nameChanged,TResult Function( _EmailOrPhoneChanged value)?  emailOrPhoneChanged,TResult Function( _Submit value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that);case _EmailOrPhoneChanged() when emailOrPhoneChanged != null:
return emailOrPhoneChanged(_that);case _Submit() when submit != null:
return submit(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NameChanged value)  nameChanged,required TResult Function( _EmailOrPhoneChanged value)  emailOrPhoneChanged,required TResult Function( _Submit value)  submit,}){
final _that = this;
switch (_that) {
case _NameChanged():
return nameChanged(_that);case _EmailOrPhoneChanged():
return emailOrPhoneChanged(_that);case _Submit():
return submit(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NameChanged value)?  nameChanged,TResult? Function( _EmailOrPhoneChanged value)?  emailOrPhoneChanged,TResult? Function( _Submit value)?  submit,}){
final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that);case _EmailOrPhoneChanged() when emailOrPhoneChanged != null:
return emailOrPhoneChanged(_that);case _Submit() when submit != null:
return submit(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function( String emailOrPhone)?  emailOrPhoneChanged,TResult Function( void Function() onSuccess,  void Function(String errorMessage) onError)?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that.name);case _EmailOrPhoneChanged() when emailOrPhoneChanged != null:
return emailOrPhoneChanged(_that.emailOrPhone);case _Submit() when submit != null:
return submit(_that.onSuccess,_that.onError);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function( String emailOrPhone)  emailOrPhoneChanged,required TResult Function( void Function() onSuccess,  void Function(String errorMessage) onError)  submit,}) {final _that = this;
switch (_that) {
case _NameChanged():
return nameChanged(_that.name);case _EmailOrPhoneChanged():
return emailOrPhoneChanged(_that.emailOrPhone);case _Submit():
return submit(_that.onSuccess,_that.onError);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function( String emailOrPhone)?  emailOrPhoneChanged,TResult? Function( void Function() onSuccess,  void Function(String errorMessage) onError)?  submit,}) {final _that = this;
switch (_that) {
case _NameChanged() when nameChanged != null:
return nameChanged(_that.name);case _EmailOrPhoneChanged() when emailOrPhoneChanged != null:
return emailOrPhoneChanged(_that.emailOrPhone);case _Submit() when submit != null:
return submit(_that.onSuccess,_that.onError);case _:
  return null;

}
}

}

/// @nodoc


class _NameChanged implements HilolChatRegisterEvent {
  const _NameChanged(this.name);
  

 final  String name;

/// Create a copy of HilolChatRegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameChangedCopyWith<_NameChanged> get copyWith => __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'HilolChatRegisterEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class _$NameChangedCopyWith<$Res> implements $HilolChatRegisterEventCopyWith<$Res> {
  factory _$NameChangedCopyWith(_NameChanged value, $Res Function(_NameChanged) _then) = __$NameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(this._self, this._then);

  final _NameChanged _self;
  final $Res Function(_NameChanged) _then;

/// Create a copy of HilolChatRegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_NameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EmailOrPhoneChanged implements HilolChatRegisterEvent {
  const _EmailOrPhoneChanged(this.emailOrPhone);
  

 final  String emailOrPhone;

/// Create a copy of HilolChatRegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailOrPhoneChangedCopyWith<_EmailOrPhoneChanged> get copyWith => __$EmailOrPhoneChangedCopyWithImpl<_EmailOrPhoneChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailOrPhoneChanged&&(identical(other.emailOrPhone, emailOrPhone) || other.emailOrPhone == emailOrPhone));
}


@override
int get hashCode => Object.hash(runtimeType,emailOrPhone);

@override
String toString() {
  return 'HilolChatRegisterEvent.emailOrPhoneChanged(emailOrPhone: $emailOrPhone)';
}


}

/// @nodoc
abstract mixin class _$EmailOrPhoneChangedCopyWith<$Res> implements $HilolChatRegisterEventCopyWith<$Res> {
  factory _$EmailOrPhoneChangedCopyWith(_EmailOrPhoneChanged value, $Res Function(_EmailOrPhoneChanged) _then) = __$EmailOrPhoneChangedCopyWithImpl;
@useResult
$Res call({
 String emailOrPhone
});




}
/// @nodoc
class __$EmailOrPhoneChangedCopyWithImpl<$Res>
    implements _$EmailOrPhoneChangedCopyWith<$Res> {
  __$EmailOrPhoneChangedCopyWithImpl(this._self, this._then);

  final _EmailOrPhoneChanged _self;
  final $Res Function(_EmailOrPhoneChanged) _then;

/// Create a copy of HilolChatRegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? emailOrPhone = null,}) {
  return _then(_EmailOrPhoneChanged(
null == emailOrPhone ? _self.emailOrPhone : emailOrPhone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Submit implements HilolChatRegisterEvent {
  const _Submit({required this.onSuccess, required this.onError});
  

 final  void Function() onSuccess;
 final  void Function(String errorMessage) onError;

/// Create a copy of HilolChatRegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitCopyWith<_Submit> get copyWith => __$SubmitCopyWithImpl<_Submit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit&&(identical(other.onSuccess, onSuccess) || other.onSuccess == onSuccess)&&(identical(other.onError, onError) || other.onError == onError));
}


@override
int get hashCode => Object.hash(runtimeType,onSuccess,onError);

@override
String toString() {
  return 'HilolChatRegisterEvent.submit(onSuccess: $onSuccess, onError: $onError)';
}


}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res> implements $HilolChatRegisterEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) _then) = __$SubmitCopyWithImpl;
@useResult
$Res call({
 void Function() onSuccess, void Function(String errorMessage) onError
});




}
/// @nodoc
class __$SubmitCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(this._self, this._then);

  final _Submit _self;
  final $Res Function(_Submit) _then;

/// Create a copy of HilolChatRegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? onSuccess = null,Object? onError = null,}) {
  return _then(_Submit(
onSuccess: null == onSuccess ? _self.onSuccess : onSuccess // ignore: cast_nullable_to_non_nullable
as void Function(),onError: null == onError ? _self.onError : onError // ignore: cast_nullable_to_non_nullable
as void Function(String errorMessage),
  ));
}


}

/// @nodoc
mixin _$HilolChatRegisterState {

 NameInput get name; EmailOrPhoneInput get emailOrPhone; bool get isValid; FormzSubmissionStatus get status; String? get errorMessage;
/// Create a copy of HilolChatRegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HilolChatRegisterStateCopyWith<HilolChatRegisterState> get copyWith => _$HilolChatRegisterStateCopyWithImpl<HilolChatRegisterState>(this as HilolChatRegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HilolChatRegisterState&&(identical(other.name, name) || other.name == name)&&(identical(other.emailOrPhone, emailOrPhone) || other.emailOrPhone == emailOrPhone)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,emailOrPhone,isValid,status,errorMessage);

@override
String toString() {
  return 'HilolChatRegisterState(name: $name, emailOrPhone: $emailOrPhone, isValid: $isValid, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $HilolChatRegisterStateCopyWith<$Res>  {
  factory $HilolChatRegisterStateCopyWith(HilolChatRegisterState value, $Res Function(HilolChatRegisterState) _then) = _$HilolChatRegisterStateCopyWithImpl;
@useResult
$Res call({
 NameInput name, EmailOrPhoneInput emailOrPhone, bool isValid, FormzSubmissionStatus status, String? errorMessage
});




}
/// @nodoc
class _$HilolChatRegisterStateCopyWithImpl<$Res>
    implements $HilolChatRegisterStateCopyWith<$Res> {
  _$HilolChatRegisterStateCopyWithImpl(this._self, this._then);

  final HilolChatRegisterState _self;
  final $Res Function(HilolChatRegisterState) _then;

/// Create a copy of HilolChatRegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? emailOrPhone = null,Object? isValid = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as NameInput,emailOrPhone: null == emailOrPhone ? _self.emailOrPhone : emailOrPhone // ignore: cast_nullable_to_non_nullable
as EmailOrPhoneInput,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HilolChatRegisterState].
extension HilolChatRegisterStatePatterns on HilolChatRegisterState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HilolChatRegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HilolChatRegisterState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HilolChatRegisterState value)  $default,){
final _that = this;
switch (_that) {
case _HilolChatRegisterState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HilolChatRegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _HilolChatRegisterState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NameInput name,  EmailOrPhoneInput emailOrPhone,  bool isValid,  FormzSubmissionStatus status,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HilolChatRegisterState() when $default != null:
return $default(_that.name,_that.emailOrPhone,_that.isValid,_that.status,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NameInput name,  EmailOrPhoneInput emailOrPhone,  bool isValid,  FormzSubmissionStatus status,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _HilolChatRegisterState():
return $default(_that.name,_that.emailOrPhone,_that.isValid,_that.status,_that.errorMessage);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NameInput name,  EmailOrPhoneInput emailOrPhone,  bool isValid,  FormzSubmissionStatus status,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _HilolChatRegisterState() when $default != null:
return $default(_that.name,_that.emailOrPhone,_that.isValid,_that.status,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _HilolChatRegisterState implements HilolChatRegisterState {
  const _HilolChatRegisterState({required this.name, required this.emailOrPhone, required this.isValid, required this.status, this.errorMessage});
  

@override final  NameInput name;
@override final  EmailOrPhoneInput emailOrPhone;
@override final  bool isValid;
@override final  FormzSubmissionStatus status;
@override final  String? errorMessage;

/// Create a copy of HilolChatRegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HilolChatRegisterStateCopyWith<_HilolChatRegisterState> get copyWith => __$HilolChatRegisterStateCopyWithImpl<_HilolChatRegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HilolChatRegisterState&&(identical(other.name, name) || other.name == name)&&(identical(other.emailOrPhone, emailOrPhone) || other.emailOrPhone == emailOrPhone)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,emailOrPhone,isValid,status,errorMessage);

@override
String toString() {
  return 'HilolChatRegisterState(name: $name, emailOrPhone: $emailOrPhone, isValid: $isValid, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$HilolChatRegisterStateCopyWith<$Res> implements $HilolChatRegisterStateCopyWith<$Res> {
  factory _$HilolChatRegisterStateCopyWith(_HilolChatRegisterState value, $Res Function(_HilolChatRegisterState) _then) = __$HilolChatRegisterStateCopyWithImpl;
@override @useResult
$Res call({
 NameInput name, EmailOrPhoneInput emailOrPhone, bool isValid, FormzSubmissionStatus status, String? errorMessage
});




}
/// @nodoc
class __$HilolChatRegisterStateCopyWithImpl<$Res>
    implements _$HilolChatRegisterStateCopyWith<$Res> {
  __$HilolChatRegisterStateCopyWithImpl(this._self, this._then);

  final _HilolChatRegisterState _self;
  final $Res Function(_HilolChatRegisterState) _then;

/// Create a copy of HilolChatRegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? emailOrPhone = null,Object? isValid = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_HilolChatRegisterState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as NameInput,emailOrPhone: null == emailOrPhone ? _self.emailOrPhone : emailOrPhone // ignore: cast_nullable_to_non_nullable
as EmailOrPhoneInput,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
