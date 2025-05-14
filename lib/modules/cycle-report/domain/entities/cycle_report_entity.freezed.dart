// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cycle_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CycleReportEntity {

 String get id; DateTime get logDate; int get flowLevel; List<String> get symptoms; String get note; String get userId;
/// Create a copy of CycleReportEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleReportEntityCopyWith<CycleReportEntity> get copyWith => _$CycleReportEntityCopyWithImpl<CycleReportEntity>(this as CycleReportEntity, _$identity);

  /// Serializes this CycleReportEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleReportEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.logDate, logDate) || other.logDate == logDate)&&(identical(other.flowLevel, flowLevel) || other.flowLevel == flowLevel)&&const DeepCollectionEquality().equals(other.symptoms, symptoms)&&(identical(other.note, note) || other.note == note)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logDate,flowLevel,const DeepCollectionEquality().hash(symptoms),note,userId);

@override
String toString() {
  return 'CycleReportEntity(id: $id, logDate: $logDate, flowLevel: $flowLevel, symptoms: $symptoms, note: $note, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CycleReportEntityCopyWith<$Res>  {
  factory $CycleReportEntityCopyWith(CycleReportEntity value, $Res Function(CycleReportEntity) _then) = _$CycleReportEntityCopyWithImpl;
@useResult
$Res call({
 String id, DateTime logDate, int flowLevel, List<String> symptoms, String note, String userId
});




}
/// @nodoc
class _$CycleReportEntityCopyWithImpl<$Res>
    implements $CycleReportEntityCopyWith<$Res> {
  _$CycleReportEntityCopyWithImpl(this._self, this._then);

  final CycleReportEntity _self;
  final $Res Function(CycleReportEntity) _then;

/// Create a copy of CycleReportEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? logDate = null,Object? flowLevel = null,Object? symptoms = null,Object? note = null,Object? userId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,logDate: null == logDate ? _self.logDate : logDate // ignore: cast_nullable_to_non_nullable
as DateTime,flowLevel: null == flowLevel ? _self.flowLevel : flowLevel // ignore: cast_nullable_to_non_nullable
as int,symptoms: null == symptoms ? _self.symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<String>,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CycleReportEntity implements CycleReportEntity {
  const _CycleReportEntity({required this.id, required this.logDate, required this.flowLevel, required final  List<String> symptoms, required this.note, required this.userId}): _symptoms = symptoms;
  factory _CycleReportEntity.fromJson(Map<String, dynamic> json) => _$CycleReportEntityFromJson(json);

@override final  String id;
@override final  DateTime logDate;
@override final  int flowLevel;
 final  List<String> _symptoms;
@override List<String> get symptoms {
  if (_symptoms is EqualUnmodifiableListView) return _symptoms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_symptoms);
}

@override final  String note;
@override final  String userId;

/// Create a copy of CycleReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CycleReportEntityCopyWith<_CycleReportEntity> get copyWith => __$CycleReportEntityCopyWithImpl<_CycleReportEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CycleReportEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CycleReportEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.logDate, logDate) || other.logDate == logDate)&&(identical(other.flowLevel, flowLevel) || other.flowLevel == flowLevel)&&const DeepCollectionEquality().equals(other._symptoms, _symptoms)&&(identical(other.note, note) || other.note == note)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logDate,flowLevel,const DeepCollectionEquality().hash(_symptoms),note,userId);

@override
String toString() {
  return 'CycleReportEntity(id: $id, logDate: $logDate, flowLevel: $flowLevel, symptoms: $symptoms, note: $note, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$CycleReportEntityCopyWith<$Res> implements $CycleReportEntityCopyWith<$Res> {
  factory _$CycleReportEntityCopyWith(_CycleReportEntity value, $Res Function(_CycleReportEntity) _then) = __$CycleReportEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime logDate, int flowLevel, List<String> symptoms, String note, String userId
});




}
/// @nodoc
class __$CycleReportEntityCopyWithImpl<$Res>
    implements _$CycleReportEntityCopyWith<$Res> {
  __$CycleReportEntityCopyWithImpl(this._self, this._then);

  final _CycleReportEntity _self;
  final $Res Function(_CycleReportEntity) _then;

/// Create a copy of CycleReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? logDate = null,Object? flowLevel = null,Object? symptoms = null,Object? note = null,Object? userId = null,}) {
  return _then(_CycleReportEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,logDate: null == logDate ? _self.logDate : logDate // ignore: cast_nullable_to_non_nullable
as DateTime,flowLevel: null == flowLevel ? _self.flowLevel : flowLevel // ignore: cast_nullable_to_non_nullable
as int,symptoms: null == symptoms ? _self._symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<String>,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
