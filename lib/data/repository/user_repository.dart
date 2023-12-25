import 'package:dartz/dartz.dart';
import 'package:x_sport/data/dtos/sport_dto/sport_dto.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failure.dart';
import '../../domain/repository/base_user_repository.dart';
import '../datasource/user_remote_datasource.dart';
import '../dtos/user_dto/user_dto.dart';

class UserRepository extends BaseUserRepository {
  final BaseUserRemoteDataSource baseUsersRemoteDataSource;

  UserRepository(this.baseUsersRemoteDataSource);

  @override
  Future<Either<Failure, UserDto>> signIn() async {
    try {
      final result = await baseUsersRemoteDataSource.signIn();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.message));
    }
  }

  @override
  Future<Either<Failure, UserDto>> signUp() async {
    try {
      final result = await baseUsersRemoteDataSource.signUp();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.message));
    }
  }

  @override
  Future<Either<Failure, bool>> checkUserLogged() async {
    try {
      final result = await baseUsersRemoteDataSource.checkUserLogged();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.message));
    }
  }

  @override
  Future<Either<Failure, bool>> validateAccount() async {
    try {
      final result = await baseUsersRemoteDataSource.validateAccount();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.message));
    }
  }

  @override
  Future<Either<Failure, bool>> logoutUser() async {
    try {
      final result = await baseUsersRemoteDataSource.logoutUser();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.message));
    }
  }

  @override
  Future<Either<Failure, List<SportDto>>> getSports() async {
    try {
      final result = await baseUsersRemoteDataSource.getSports();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.message));
    }
  }

  @override
  Future<Either<Failure, UserDto>> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports) async {
    try {
      final result = await baseUsersRemoteDataSource.sendImageAndSports(
          imageBytes, imageType, selectedSports);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.message));
    }
  }

  @override
  Future<Either<Failure, UserDto>> getUserInfo() async {
    try {
      final result = await baseUsersRemoteDataSource.getUserInfo();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.message));
    }
  }
}
