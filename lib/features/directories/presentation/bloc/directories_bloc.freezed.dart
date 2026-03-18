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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _:
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
mixin _$DirectoriesState {

 List<Directory> get directories;
/// Create a copy of DirectoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectoriesStateCopyWith<DirectoriesState> get copyWith => _$DirectoriesStateCopyWithImpl<DirectoriesState>(this as DirectoriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectoriesState&&const DeepCollectionEquality().equals(other.directories, directories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(directories));

@override
String toString() {
  return 'DirectoriesState(directories: $directories)';
}


}

/// @nodoc
abstract mixin class $DirectoriesStateCopyWith<$Res>  {
  factory $DirectoriesStateCopyWith(DirectoriesState value, $Res Function(DirectoriesState) _then) = _$DirectoriesStateCopyWithImpl;
@useResult
$Res call({
 List<Directory> directories
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
@pragma('vm:prefer-inline') @override $Res call({Object? directories = null,}) {
  return _then(_self.copyWith(
directories: null == directories ? _self.directories : directories // ignore: cast_nullable_to_non_nullable
as List<Directory>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Directory> directories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectoriesState() when $default != null:
return $default(_that.directories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Directory> directories)  $default,) {final _that = this;
switch (_that) {
case _DirectoriesState():
return $default(_that.directories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Directory> directories)?  $default,) {final _that = this;
switch (_that) {
case _DirectoriesState() when $default != null:
return $default(_that.directories);case _:
  return null;

}
}

}

/// @nodoc


class _DirectoriesState implements DirectoriesState {
  const _DirectoriesState({final  List<Directory> directories = const []}): _directories = directories;
  

 final  List<Directory> _directories;
@override@JsonKey() List<Directory> get directories {
  if (_directories is EqualUnmodifiableListView) return _directories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_directories);
}


/// Create a copy of DirectoriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectoriesStateCopyWith<_DirectoriesState> get copyWith => __$DirectoriesStateCopyWithImpl<_DirectoriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectoriesState&&const DeepCollectionEquality().equals(other._directories, _directories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_directories));

@override
String toString() {
  return 'DirectoriesState(directories: $directories)';
}


}

/// @nodoc
abstract mixin class _$DirectoriesStateCopyWith<$Res> implements $DirectoriesStateCopyWith<$Res> {
  factory _$DirectoriesStateCopyWith(_DirectoriesState value, $Res Function(_DirectoriesState) _then) = __$DirectoriesStateCopyWithImpl;
@override @useResult
$Res call({
 List<Directory> directories
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
@override @pragma('vm:prefer-inline') $Res call({Object? directories = null,}) {
  return _then(_DirectoriesState(
directories: null == directories ? _self._directories : directories // ignore: cast_nullable_to_non_nullable
as List<Directory>,
  ));
}


}

// dart format on
