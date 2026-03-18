// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Directory {

 String get id; String get title; String? get description; String get directoryType; List<MembersDirectory> get members;
/// Create a copy of Directory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectoryCopyWith<Directory> get copyWith => _$DirectoryCopyWithImpl<Directory>(this as Directory, _$identity);

  /// Serializes this Directory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Directory&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.directoryType, directoryType) || other.directoryType == directoryType)&&const DeepCollectionEquality().equals(other.members, members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,directoryType,const DeepCollectionEquality().hash(members));

@override
String toString() {
  return 'Directory(id: $id, title: $title, description: $description, directoryType: $directoryType, members: $members)';
}


}

/// @nodoc
abstract mixin class $DirectoryCopyWith<$Res>  {
  factory $DirectoryCopyWith(Directory value, $Res Function(Directory) _then) = _$DirectoryCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? description, String directoryType, List<MembersDirectory> members
});




}
/// @nodoc
class _$DirectoryCopyWithImpl<$Res>
    implements $DirectoryCopyWith<$Res> {
  _$DirectoryCopyWithImpl(this._self, this._then);

  final Directory _self;
  final $Res Function(Directory) _then;

/// Create a copy of Directory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? directoryType = null,Object? members = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,directoryType: null == directoryType ? _self.directoryType : directoryType // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<MembersDirectory>,
  ));
}

}


/// Adds pattern-matching-related methods to [Directory].
extension DirectoryPatterns on Directory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Directory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Directory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Directory value)  $default,){
final _that = this;
switch (_that) {
case _Directory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Directory value)?  $default,){
final _that = this;
switch (_that) {
case _Directory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  String directoryType,  List<MembersDirectory> members)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Directory() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.directoryType,_that.members);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  String directoryType,  List<MembersDirectory> members)  $default,) {final _that = this;
switch (_that) {
case _Directory():
return $default(_that.id,_that.title,_that.description,_that.directoryType,_that.members);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? description,  String directoryType,  List<MembersDirectory> members)?  $default,) {final _that = this;
switch (_that) {
case _Directory() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.directoryType,_that.members);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Directory implements Directory {
  const _Directory({required this.id, required this.title, this.description, required this.directoryType, final  List<MembersDirectory> members = const []}): _members = members;
  factory _Directory.fromJson(Map<String, dynamic> json) => _$DirectoryFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? description;
@override final  String directoryType;
 final  List<MembersDirectory> _members;
@override@JsonKey() List<MembersDirectory> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}


/// Create a copy of Directory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectoryCopyWith<_Directory> get copyWith => __$DirectoryCopyWithImpl<_Directory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Directory&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.directoryType, directoryType) || other.directoryType == directoryType)&&const DeepCollectionEquality().equals(other._members, _members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,directoryType,const DeepCollectionEquality().hash(_members));

@override
String toString() {
  return 'Directory(id: $id, title: $title, description: $description, directoryType: $directoryType, members: $members)';
}


}

/// @nodoc
abstract mixin class _$DirectoryCopyWith<$Res> implements $DirectoryCopyWith<$Res> {
  factory _$DirectoryCopyWith(_Directory value, $Res Function(_Directory) _then) = __$DirectoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, String directoryType, List<MembersDirectory> members
});




}
/// @nodoc
class __$DirectoryCopyWithImpl<$Res>
    implements _$DirectoryCopyWith<$Res> {
  __$DirectoryCopyWithImpl(this._self, this._then);

  final _Directory _self;
  final $Res Function(_Directory) _then;

/// Create a copy of Directory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? directoryType = null,Object? members = null,}) {
  return _then(_Directory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,directoryType: null == directoryType ? _self.directoryType : directoryType // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<MembersDirectory>,
  ));
}


}

// dart format on
