import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../data/dtos/sport_dto/sport_dto.dart';
import '../../../data/dtos/user_dto/user_dto.dart';
import '../../repository/base_user_repository.dart';

class GetsportsUseCase {
  final BaseUserRepository repository;

  GetsportsUseCase(this.repository);

  Future<Either<Failure, List<SportDto>>> call() async {
    return await repository.getSports();
  }
}
