import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petra/modules/auth/data/datasource/auth_datasource.dart';
import 'package:petra/modules/auth/data/datasource/mock_auth_datasource.dart';
import 'package:petra/modules/auth/data/repositories/auth_repository_impl.dart';
import 'package:petra/modules/auth/domain/repositories/auth_repository.dart';
import 'package:petra/modules/auth/domain/usecases/initialize_sdk_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_di.g.dart';

@riverpod
MockAuthDatasource authDatasource(Ref ref) {
  return MockAuthDatasource();
}

@riverpod
AuthRepository authRepository(Ref ref) {
  final dataSource = ref.watch(authDatasourceProvider);
  return AuthRepositoryImpl(dataSource);
}

@Riverpod(keepAlive: true)
InitializeSdkUsecase initializeSdk(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return InitializeSdkUsecase(authRepository);
}