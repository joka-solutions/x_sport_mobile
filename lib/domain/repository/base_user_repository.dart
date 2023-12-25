import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../../data/dtos/sport_dto/sport_dto.dart';
import '../../data/dtos/user_dto/user_dto.dart';

abstract class BaseUserRepository {
  Future<Either<Failure, UserDto>> signIn();
  Future<Either<Failure, UserDto>> signUp();
  Future<Either<Failure, UserDto>> getUserInfo();

  Future<Either<Failure, bool>> checkUserLogged();
  Future<Either<Failure, bool>> validateAccount();
  Future<Either<Failure, bool>> logoutUser();
  Future<Either<Failure, List<SportDto>>> getSports();
  Future<Either<Failure, UserDto>> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports);
}
