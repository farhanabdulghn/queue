// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QueueModel {

 int? get id; String? get name; QueueType? get type;
/// Create a copy of QueueModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueueModelCopyWith<QueueModel> get copyWith => _$QueueModelCopyWithImpl<QueueModel>(this as QueueModel, _$identity);

  /// Serializes this QueueModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type);

@override
String toString() {
  return 'QueueModel(id: $id, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class $QueueModelCopyWith<$Res>  {
  factory $QueueModelCopyWith(QueueModel value, $Res Function(QueueModel) _then) = _$QueueModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, QueueType? type
});




}
/// @nodoc
class _$QueueModelCopyWithImpl<$Res>
    implements $QueueModelCopyWith<$Res> {
  _$QueueModelCopyWithImpl(this._self, this._then);

  final QueueModel _self;
  final $Res Function(QueueModel) _then;

/// Create a copy of QueueModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QueueType?,
  ));
}

}


/// Adds pattern-matching-related methods to [QueueModel].
extension QueueModelPatterns on QueueModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QueueModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueueModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QueueModel value)  $default,){
final _that = this;
switch (_that) {
case _QueueModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QueueModel value)?  $default,){
final _that = this;
switch (_that) {
case _QueueModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  QueueType? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QueueModel() when $default != null:
return $default(_that.id,_that.name,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  QueueType? type)  $default,) {final _that = this;
switch (_that) {
case _QueueModel():
return $default(_that.id,_that.name,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  QueueType? type)?  $default,) {final _that = this;
switch (_that) {
case _QueueModel() when $default != null:
return $default(_that.id,_that.name,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QueueModel implements QueueModel {
  const _QueueModel({this.id, this.name, this.type});
  factory _QueueModel.fromJson(Map<String, dynamic> json) => _$QueueModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  QueueType? type;

/// Create a copy of QueueModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueueModelCopyWith<_QueueModel> get copyWith => __$QueueModelCopyWithImpl<_QueueModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QueueModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type);

@override
String toString() {
  return 'QueueModel(id: $id, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class _$QueueModelCopyWith<$Res> implements $QueueModelCopyWith<$Res> {
  factory _$QueueModelCopyWith(_QueueModel value, $Res Function(_QueueModel) _then) = __$QueueModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, QueueType? type
});




}
/// @nodoc
class __$QueueModelCopyWithImpl<$Res>
    implements _$QueueModelCopyWith<$Res> {
  __$QueueModelCopyWithImpl(this._self, this._then);

  final _QueueModel _self;
  final $Res Function(_QueueModel) _then;

/// Create a copy of QueueModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,}) {
  return _then(_QueueModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QueueType?,
  ));
}


}

// dart format on
