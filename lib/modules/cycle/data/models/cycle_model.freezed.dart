// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cycle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CycleModel {

 String get id; DateTime get startDate; DateTime get endDate; int get cycleLength; List<String> get cycleReports; bool get isCurrent; String get userId;
/// Create a copy of CycleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleModelCopyWith<CycleModel> get copyWith => _$CycleModelCopyWithImpl<CycleModel>(this as CycleModel, _$identity);

  /// Serializes this CycleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.cycleLength, cycleLength) || other.cycleLength == cycleLength)&&const DeepCollectionEquality().equals(other.cycleReports, cycleReports)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startDate,endDate,cycleLength,const DeepCollectionEquality().hash(cycleReports),isCurrent,userId);

@override
String toString() {
  return 'CycleModel(id: $id, startDate: $startDate, endDate: $endDate, cycleLength: $cycleLength, cycleReports: $cycleReports, isCurrent: $isCurrent, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CycleModelCopyWith<$Res>  {
  factory $CycleModelCopyWith(CycleModel value, $Res Function(CycleModel) _then) = _$CycleModelCopyWithImpl;
@useResult
$Res call({
 String id, DateTime startDate, DateTime endDate, int cycleLength, List<String> cycleReports, bool isCurrent, String userId
});




}
/// @nodoc
class _$CycleModelCopyWithImpl<$Res>
    implements $CycleModelCopyWith<$Res> {
  _$CycleModelCopyWithImpl(this._self, this._then);

  final CycleModel _self;
  final $Res Function(CycleModel) _then;

/// Create a copy of CycleModel
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

class _CycleModel implements CycleModel {
  const _CycleModel({required this.id, required this.startDate, required this.endDate, required this.cycleLength, required final  List<String> cycleReports, required this.isCurrent, required this.userId}): _cycleReports = cycleReports;
  factory _CycleModel.fromJson(Map<String, dynamic> json) => _$CycleModelFromJson(json);

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

/// Create a copy of CycleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CycleModelCopyWith<_CycleModel> get copyWith => __$CycleModelCopyWithImpl<_CycleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CycleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CycleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.cycleLength, cycleLength) || other.cycleLength == cycleLength)&&const DeepCollectionEquality().equals(other._cycleReports, _cycleReports)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startDate,endDate,cycleLength,const DeepCollectionEquality().hash(_cycleReports),isCurrent,userId);

@override
String toString() {
  return 'CycleModel(id: $id, startDate: $startDate, endDate: $endDate, cycleLength: $cycleLength, cycleReports: $cycleReports, isCurrent: $isCurrent, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$CycleModelCopyWith<$Res> implements $CycleModelCopyWith<$Res> {
  factory _$CycleModelCopyWith(_CycleModel value, $Res Function(_CycleModel) _then) = __$CycleModelCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime startDate, DateTime endDate, int cycleLength, List<String> cycleReports, bool isCurrent, String userId
});




}
/// @nodoc
class __$CycleModelCopyWithImpl<$Res>
    implements _$CycleModelCopyWith<$Res> {
  __$CycleModelCopyWithImpl(this._self, this._then);

  final _CycleModel _self;
  final $Res Function(_CycleModel) _then;

/// Create a copy of CycleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? startDate = null,Object? endDate = null,Object? cycleLength = null,Object? cycleReports = null,Object? isCurrent = null,Object? userId = null,}) {
  return _then(_CycleModel(
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
