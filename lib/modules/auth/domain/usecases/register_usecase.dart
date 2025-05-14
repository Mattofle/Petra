import 'package:petra/modules/auth/domain/entities/auth_user_entity.dart';
import 'package:petra/modules/auth/domain/repositories/auth_repository.dart';

class RegisterUsecase {

  RegisterUsecase(this._authRepository);
  final AuthRepository _authRepository;
  
  Future<AuthUserEntity> call({ 
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    return _authRepository.register(email: email, firstName: firstName, lastName: lastName);
  }
  
}
