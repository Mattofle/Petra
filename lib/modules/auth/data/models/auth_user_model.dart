import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_model.freezed.dart';
part 'auth_user_model.g.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
  }) = _AuthUserModel;


  factory AuthUserModel.fromJson(Map<String, dynamic> json) => _$AuthUserModelFromJson(json);

   @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}


