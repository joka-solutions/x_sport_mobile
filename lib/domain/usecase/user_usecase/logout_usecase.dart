import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class LogoutUserUseCase {
  final BaseUserRepository repository;

  LogoutUserUseCase(this.repository);

  Future<Either<Failure, bool>> call() async {
    return await repository.logoutUser();
  }
}
