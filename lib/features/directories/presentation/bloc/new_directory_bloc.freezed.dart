// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_directory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewDirectoryEvent {

 String get title; String? get description; DirectoryType get directoryType;
/// Create a copy of NewDirectoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewDirectoryEventCopyWith<NewDirectoryEvent> get copyWith => _$NewDirectoryEventCopyWithImpl<NewDirectoryEvent>(this as NewDirectoryEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewDirectoryEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.directoryType, directoryType));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(directoryType));

@override
String toString() {
  return 'NewDirectoryEvent(title: $title, description: $description, directoryType: $directoryType)';
}


}

/// @nodoc
abstract mixin class $NewDirectoryEventCopyWith<$Res>  {
  factory $NewDirectoryEventCopyWith(NewDirectoryEvent value, $Res Function(NewDirectoryEvent) _then) = _$NewDirectoryEventCopyWithImpl;
@useResult
$Res call({
 String title, String? description, DirectoryType directoryType
});




}
/// @nodoc
class _$NewDirectoryEventCopyWithImpl<$Res>
    implements $NewDirectoryEventCopyWith<$Res> {
  _$NewDirectoryEventCopyWithImpl(this._self, this._then);

  final NewDirectoryEvent _self;
  final $Res Function(NewDirectoryEvent) _then;

/// Create a copy of NewDirectoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? directoryType = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,directoryType: freezed == directoryType ? _self.directoryType : directoryType // ignore: cast_nullable_to_non_nullable
as DirectoryType,
  ));
}

}


/// Adds pattern-matching-related methods to [NewDirectoryEvent].
extension NewDirectoryEventPatterns on NewDirectoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Submitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Submitted value)  submitted,}){
final _that = this;
switch (_that) {
case _Submitted():
return submitted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Submitted value)?  submitted,}){
final _that = this;
switch (_that) {
case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title,  String? description,  DirectoryType directoryType)?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Submitted() when submitted != null:
return submitted(_that.title,_that.description,_that.directoryType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title,  String? description,  DirectoryType directoryType)  submitted,}) {final _that = this;
switch (_that) {
case _Submitted():
return submitted(_that.title,_that.description,_that.directoryType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title,  String? description,  DirectoryType directoryType)?  submitted,}) {final _that = this;
switch (_that) {
case _Submitted() when submitted != null:
return submitted(_that.title,_that.description,_that.directoryType);case _:
  return null;

}
}

}

/// @nodoc


class _Submitted implements NewDirectoryEvent {
  const _Submitted({required this.title, this.description, required this.directoryType});
  

@override final  String title;
@override final  String? description;
@override final  DirectoryType directoryType;

/// Create a copy of NewDirectoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmittedCopyWith<_Submitted> get copyWith => __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.directoryType, directoryType));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(directoryType));

@override
String toString() {
  return 'NewDirectoryEvent.submitted(title: $title, description: $description, directoryType: $directoryType)';
}


}

/// @nodoc
abstract mixin class _$SubmittedCopyWith<$Res> implements $NewDirectoryEventCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) _then) = __$SubmittedCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description, DirectoryType directoryType
});




}
/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(this._self, this._then);

  final _Submitted _self;
  final $Res Function(_Submitted) _then;

/// Create a copy of NewDirectoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? directoryType = freezed,}) {
  return _then(_Submitted(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,directoryType: freezed == directoryType ? _self.directoryType : directoryType // ignore: cast_nullable_to_non_nullable
as DirectoryType,
  ));
}


}

/// @nodoc
mixin _$NewDirectoryState {

 NewDirectoryStatus get status; String? get errorMessage;
/// Create a copy of NewDirectoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewDirectoryStateCopyWith<NewDirectoryState> get copyWith => _$NewDirectoryStateCopyWithImpl<NewDirectoryState>(this as NewDirectoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewDirectoryState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage);

@override
String toString() {
  return 'NewDirectoryState(status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $NewDirectoryStateCopyWith<$Res>  {
  factory $NewDirectoryStateCopyWith(NewDirectoryState value, $Res Function(NewDirectoryState) _then) = _$NewDirectoryStateCopyWithImpl;
@useResult
$Res call({
 NewDirectoryStatus status, String? errorMessage
});




}
/// @nodoc
class _$NewDirectoryStateCopyWithImpl<$Res>
    implements $NewDirectoryStateCopyWith<$Res> {
  _$NewDirectoryStateCopyWithImpl(this._self, this._then);

  final NewDirectoryState _self;
  final $Res Function(NewDirectoryState) _then;

/// Create a copy of NewDirectoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NewDirectoryStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NewDirectoryState].
extension NewDirectoryStatePatterns on NewDirectoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewDirectoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewDirectoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewDirectoryState value)  $default,){
final _that = this;
switch (_that) {
case _NewDirectoryState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewDirectoryState value)?  $default,){
final _that = this;
switch (_that) {
case _NewDirectoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NewDirectoryStatus status,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewDirectoryState() when $default != null:
return $default(_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NewDirectoryStatus status,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _NewDirectoryState():
return $default(_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NewDirectoryStatus status,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _NewDirectoryState() when $default != null:
return $default(_that.status,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _NewDirectoryState implements NewDirectoryState {
  const _NewDirectoryState({this.status = NewDirectoryStatus.initial, this.errorMessage});
  

@override@JsonKey() final  NewDirectoryStatus status;
@override final  String? errorMessage;

/// Create a copy of NewDirectoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewDirectoryStateCopyWith<_NewDirectoryState> get copyWith => __$NewDirectoryStateCopyWithImpl<_NewDirectoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewDirectoryState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage);

@override
String toString() {
  return 'NewDirectoryState(status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$NewDirectoryStateCopyWith<$Res> implements $NewDirectoryStateCopyWith<$Res> {
  factory _$NewDirectoryStateCopyWith(_NewDirectoryState value, $Res Function(_NewDirectoryState) _then) = __$NewDirectoryStateCopyWithImpl;
@override @useResult
$Res call({
 NewDirectoryStatus status, String? errorMessage
});




}
/// @nodoc
class __$NewDirectoryStateCopyWithImpl<$Res>
    implements _$NewDirectoryStateCopyWith<$Res> {
  __$NewDirectoryStateCopyWithImpl(this._self, this._then);

  final _NewDirectoryState _self;
  final $Res Function(_NewDirectoryState) _then;

/// Create a copy of NewDirectoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_NewDirectoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NewDirectoryStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
