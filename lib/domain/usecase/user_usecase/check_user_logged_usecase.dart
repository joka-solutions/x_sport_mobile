import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../data/dtos/user_dto/user_dto.dart';
import '../../repository/base_user_repository.dart';

class CheckUserLoggedUseCase {
  final BaseUserRepository repository;

  CheckUserLoggedUseCase(this.repository);

  Future<Either<Failure, bool>> call() async {
    return await repository.checkUserLogged();
  }
}
