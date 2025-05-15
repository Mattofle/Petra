// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cycle_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CycleEntity {

 String get id; DateTime get startDate; DateTime get endDate; int get cycleLength; List<String> get cycleReports; bool get isCurrent; String get userId;
/// Create a copy of CycleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleEntityCopyWith<CycleEntity> get copyWith => _$CycleEntityCopyWithImpl<CycleEntity>(this as CycleEntity, _$identity);

  /// Serializes this CycleEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.cycleLength, cycleLength) || other.cycleLength == cycleLength)&&const DeepCollectionEquality().equals(other.cycleReports, cycleReports)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startDate,endDate,cycleLength,const DeepCollectionEquality().hash(cycleReports),isCurrent,userId);

@override
String toString() {
  return 'CycleEntity(id: $id, startDate: $startDate, endDate: $endDate, cycleLength: $cycleLength, cycleReports: $cycleReports, isCurrent: $isCurrent, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CycleEntityCopyWith<$Res>  {
  factory $CycleEntityCopyWith(CycleEntity value, $Res Function(CycleEntity) _then) = _$CycleEntityCopyWithImpl;
@useResult
$Res call({
 String id, DateTime startDate, DateTime endDate, int cycleLength, List<String> cycleReports, bool isCurrent, String userId
});




}
/// @nodoc
class _$CycleEntityCopyWithImpl<$Res>
    implements $CycleEntityCopyWith<$Res> {
  _$CycleEntityCopyWithImpl(this._self, this._then);

  final CycleEntity _self;
  final $Res Function(CycleEntity) _then;

/// Create a copy of CycleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? startDate = null,Object? endDate = null,Object? cycleLength = null,Object? cycleReports = null,Object? isCurrent = null,Object? userId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,cycleLength: null == cycleLength ? _self.cycleLength : cycleLength // ignore: cast_nullable_to_non_nullable
as int,cycleReports: null == cycleReports ? _self.cycleReports : cycleReports // ignore: cast_nullable_to_non_nullable
as List<String>,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CycleEntity implements CycleEntity {
  const _CycleEntity({required this.id, required this.startDate, required this.endDate, required this.cycleLength, required final  List<String> cycleReports, required this.isCurrent, required this.userId}): _cycleReports = cycleReports;
  factory _CycleEntity.fromJson(Map<String, dynamic> json) => _$CycleEntityFromJson(json);

@override final  String id;
@override final  DateTime startDate;
@override final  DateTime endDate;
@override final  int cycleLength;
 final  List<String> _cycleReports;
@override List<String> get cycleReports {
  if (_cycleReports is EqualUnmodifiableListView) return _cycleReports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cycleReports);
}

@override final  bool isCurrent;
@override final  String userId;

/// Create a copy of CycleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CycleEntityCopyWith<_CycleEntity> get copyWith => __$CycleEntityCopyWithImpl<_CycleEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CycleEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CycleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.cycleLength, cycleLength) || other.cycleLength == cycleLength)&&const DeepCollectionEquality().equals(other._cycleReports, _cycleReports)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startDate,endDate,cycleLength,const DeepCollectionEquality().hash(_cycleReports),isCurrent,userId);

@override
String toString() {
  return 'CycleEntity(id: $id, startDate: $startDate, endDate: $endDate, cycleLength: $cycleLength, cycleReports: $cycleReports, isCurrent: $isCurrent, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$CycleEntityCopyWith<$Res> implements $CycleEntityCopyWith<$Res> {
  factory _$CycleEntityCopyWith(_CycleEntity value, $Res Function(_CycleEntity) _then) = __$CycleEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime startDate, DateTime endDate, int cycleLength, List<String> cycleReports, bool isCurrent, String userId
});




}
/// @nodoc
class __$CycleEntityCopyWithImpl<$Res>
    implements _$CycleEntityCopyWith<$Res> {
  __$CycleEntityCopyWithImpl(this._self, this._then);

  final _CycleEntity _self;
  final $Res Function(_CycleEntity) _then;

/// Create a copy of CycleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? startDate = null,Object? endDate = null,Object? cycleLength = null,Object? cycleReports = null,Object? isCurrent = null,Object? userId = null,}) {
  return _then(_CycleEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,cycleLength: null == cycleLength ? _self.cycleLength : cycleLength // ignore: cast_nullable_to_non_nullable
as int,cycleReports: null == cycleReports ? _self._cycleReports : cycleReports // ignore: cast_nullable_to_non_nullable
as List<String>,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
