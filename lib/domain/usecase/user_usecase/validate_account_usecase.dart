import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class ValidateAccountUseCase {
  final BaseUserRepository repository;

  ValidateAccountUseCase(this.repository);

  Future<Either<Failure, bool>> call() async {
    return await repository.validateAccount();
  }
}
