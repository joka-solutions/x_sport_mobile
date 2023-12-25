import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../data/dtos/user_dto/user_dto.dart';
import '../../repository/base_user_repository.dart';

class SignInUseCase {
  final BaseUserRepository repository;

  SignInUseCase(this.repository);

  Future<Either<Failure, UserDto>> call() async {
    return await repository.signIn();
  }
}
