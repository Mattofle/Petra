import 'package:petra/modules/auth/domain/entities/auth_user_entity.dart';
import 'package:petra/modules/auth/domain/repositories/auth_repository.dart';

class LoginUsecase {
  LoginUsecase(this._authRepository);
  final AuthRepository _authRepository;
  
  Future<AuthUserEntity> call({
    required String email,
    required String code,
  }) async {
    return _authRepository.login(email: email, code: code);
  }
} 
