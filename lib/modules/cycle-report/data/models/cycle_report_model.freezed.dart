// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cycle_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CycleReportModel {

 String get id; DateTime get logDate; int get flowLevel; List<String> get symptoms; String get note; String get userId;
/// Create a copy of CycleReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleReportModelCopyWith<CycleReportModel> get copyWith => _$CycleReportModelCopyWithImpl<CycleReportModel>(this as CycleReportModel, _$identity);

  /// Serializes this CycleReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.logDate, logDate) || other.logDate == logDate)&&(identical(other.flowLevel, flowLevel) || other.flowLevel == flowLevel)&&const DeepCollectionEquality().equals(other.symptoms, symptoms)&&(identical(other.note, note) || other.note == note)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logDate,flowLevel,const DeepCollectionEquality().hash(symptoms),note,userId);

@override
String toString() {
  return 'CycleReportModel(id: $id, logDate: $logDate, flowLevel: $flowLevel, symptoms: $symptoms, note: $note, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CycleReportModelCopyWith<$Res>  {
  factory $CycleReportModelCopyWith(CycleReportModel value, $Res Function(CycleReportModel) _then) = _$CycleReportModelCopyWithImpl;
@useResult
$Res call({
 String id, DateTime logDate, int flowLevel, List<String> symptoms, String note, String userId
});




}
/// @nodoc
class _$CycleReportModelCopyWithImpl<$Res>
    implements $CycleReportModelCopyWith<$Res> {
  _$CycleReportModelCopyWithImpl(this._self, this._then);

  final CycleReportModel _self;
  final $Res Function(CycleReportModel) _then;

/// Create a copy of CycleReportModel
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

class _CycleReportModel implements CycleReportModel {
  const _CycleReportModel({required this.id, required this.logDate, required this.flowLevel, required final  List<String> symptoms, required this.note, required this.userId}): _symptoms = symptoms;
  factory _CycleReportModel.fromJson(Map<String, dynamic> json) => _$CycleReportModelFromJson(json);

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

/// Create a copy of CycleReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CycleReportModelCopyWith<_CycleReportModel> get copyWith => __$CycleReportModelCopyWithImpl<_CycleReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CycleReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CycleReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.logDate, logDate) || other.logDate == logDate)&&(identical(other.flowLevel, flowLevel) || other.flowLevel == flowLevel)&&const DeepCollectionEquality().equals(other._symptoms, _symptoms)&&(identical(other.note, note) || other.note == note)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logDate,flowLevel,const DeepCollectionEquality().hash(_symptoms),note,userId);

@override
String toString() {
  return 'CycleReportModel(id: $id, logDate: $logDate, flowLevel: $flowLevel, symptoms: $symptoms, note: $note, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$CycleReportModelCopyWith<$Res> implements $CycleReportModelCopyWith<$Res> {
  factory _$CycleReportModelCopyWith(_CycleReportModel value, $Res Function(_CycleReportModel) _then) = __$CycleReportModelCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime logDate, int flowLevel, List<String> symptoms, String note, String userId
});




}
/// @nodoc
class __$CycleReportModelCopyWithImpl<$Res>
    implements _$CycleReportModelCopyWith<$Res> {
  __$CycleReportModelCopyWithImpl(this._self, this._then);

  final _CycleReportModel _self;
  final $Res Function(_CycleReportModel) _then;

/// Create a copy of CycleReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? logDate = null,Object? flowLevel = null,Object? symptoms = null,Object? note = null,Object? userId = null,}) {
  return _then(_CycleReportModel(
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
