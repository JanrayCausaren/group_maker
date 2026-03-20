// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DirectoriesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectoriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DirectoriesEvent()';
}


}

/// @nodoc
class $DirectoriesEventCopyWith<$Res>  {
$DirectoriesEventCopyWith(DirectoriesEvent _, $Res Function(DirectoriesEvent) __);
}


/// Adds pattern-matching-related methods to [DirectoriesEvent].
extension DirectoriesEventPatterns on DirectoriesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Deleted value)?  deleted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Deleted() when deleted != null:
return deleted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Deleted value)  deleted,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Deleted():
return deleted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Deleted value)?  deleted,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Deleted() when deleted != null:
return deleted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String id)?  deleted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Deleted() when deleted != null:
return deleted(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String id)  deleted,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Deleted():
return deleted(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String id)?  deleted,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Deleted() when deleted != null:
return deleted(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DirectoriesEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DirectoriesEvent.started()';
}


}




/// @nodoc


class _Deleted implements DirectoriesEvent {
  const _Deleted(this.id);
  

 final  String id;

/// Create a copy of DirectoriesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletedCopyWith<_Deleted> get copyWith => __$DeletedCopyWithImpl<_Deleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deleted&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DirectoriesEvent.deleted(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeletedCopyWith<$Res> implements $DirectoriesEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) _then) = __$DeletedCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(this._self, this._then);

  final _Deleted _self;
  final $Res Function(_Deleted) _then;

/// Create a copy of DirectoriesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Deleted(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DirectoriesState {

 DirectoriesStatus get status; List<Directory> get directories; String? get errorMessage;
/// Create a copy of DirectoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectoriesStateCopyWith<DirectoriesState> get copyWith => _$DirectoriesStateCopyWithImpl<DirectoriesState>(this as DirectoriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectoriesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.directories, directories)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(directories),errorMessage);

@override
String toString() {
  return 'DirectoriesState(status: $status, directories: $directories, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $DirectoriesStateCopyWith<$Res>  {
  factory $DirectoriesStateCopyWith(DirectoriesState value, $Res Function(DirectoriesState) _then) = _$DirectoriesStateCopyWithImpl;
@useResult
$Res call({
 DirectoriesStatus status, List<Directory> directories, String? errorMessage
});




}
/// @nodoc
class _$DirectoriesStateCopyWithImpl<$Res>
    implements $DirectoriesStateCopyWith<$Res> {
  _$DirectoriesStateCopyWithImpl(this._self, this._then);

  final DirectoriesState _self;
  final $Res Function(DirectoriesState) _then;

/// Create a copy of DirectoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? directories = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DirectoriesStatus,directories: null == directories ? _self.directories : directories // ignore: cast_nullable_to_non_nullable
as List<Directory>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectoriesState].
extension DirectoriesStatePatterns on DirectoriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectoriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectoriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectoriesState value)  $default,){
final _that = this;
switch (_that) {
case _DirectoriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectoriesState value)?  $default,){
final _that = this;
switch (_that) {
case _DirectoriesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DirectoriesStatus status,  List<Directory> directories,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectoriesState() when $default != null:
return $default(_that.status,_that.directories,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DirectoriesStatus status,  List<Directory> directories,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _DirectoriesState():
return $default(_that.status,_that.directories,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DirectoriesStatus status,  List<Directory> directories,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _DirectoriesState() when $default != null:
return $default(_that.status,_that.directories,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _DirectoriesState implements DirectoriesState {
  const _DirectoriesState({this.status = DirectoriesStatus.initial, final  List<Directory> directories = const [], this.errorMessage}): _directories = directories;
  

@override@JsonKey() final  DirectoriesStatus status;
 final  List<Directory> _directories;
@override@JsonKey() List<Directory> get directories {
  if (_directories is EqualUnmodifiableListView) return _directories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_directories);
}

@override final  String? errorMessage;

/// Create a copy of DirectoriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectoriesStateCopyWith<_DirectoriesState> get copyWith => __$DirectoriesStateCopyWithImpl<_DirectoriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectoriesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._directories, _directories)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_directories),errorMessage);

@override
String toString() {
  return 'DirectoriesState(status: $status, directories: $directories, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$DirectoriesStateCopyWith<$Res> implements $DirectoriesStateCopyWith<$Res> {
  factory _$DirectoriesStateCopyWith(_DirectoriesState value, $Res Function(_DirectoriesState) _then) = __$DirectoriesStateCopyWithImpl;
@override @useResult
$Res call({
 DirectoriesStatus status, List<Directory> directories, String? errorMessage
});




}
/// @nodoc
class __$DirectoriesStateCopyWithImpl<$Res>
    implements _$DirectoriesStateCopyWith<$Res> {
  __$DirectoriesStateCopyWithImpl(this._self, this._then);

  final _DirectoriesState _self;
  final $Res Function(_DirectoriesState) _then;

/// Create a copy of DirectoriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? directories = null,Object? errorMessage = freezed,}) {
  return _then(_DirectoriesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DirectoriesStatus,directories: null == directories ? _self._directories : directories // ignore: cast_nullable_to_non_nullable
as List<Directory>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
