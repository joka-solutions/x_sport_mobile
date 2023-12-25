import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:x_sport/domain/usecase/user_usecase/get_sports_usecase.dart';
import 'package:x_sport/domain/usecase/user_usecase/get_user_info_usecase.dart';
import 'package:x_sport/domain/usecase/user_usecase/send_image_and_sports_usecase.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_event.dart';

import '../../../data/datasource/user_remote_datasource.dart';
import '../../../data/repository/user_repository.dart';
import '../../../domain/repository/base_user_repository.dart';
import '../../../domain/usecase/user_usecase/check_user_logged_usecase.dart';
import '../../../domain/usecase/user_usecase/sign_in_usecase.dart';
import '../../../domain/usecase/user_usecase/sign_up_usecase.dart';
import '../../../domain/usecase/user_usecase/validate_account_usecase.dart';
import '../../../presentation/controllers/user_bloc/user_bloc.dart';
import '../preload_images_service.dart';
import '../secure_storage_service.dart.dart';

final GetIt sl = GetIt.instance;

class ServiceLocator {
  static void init() {
    // GoRouterService

    // SecureStorageService
    sl.registerFactory(() => SecureStorageService());

    sl.registerFactory(() => ImagePreloadingService());

    // Api Service
    sl.registerLazySingleton<Dio>(() {
      final BaseOptions baseOptions = BaseOptions(
        baseUrl: 'http://192.168.2.6:8000/api', // Set your base URL
        connectTimeout: const Duration(seconds: 12), // Set your connect timeout
        receiveTimeout: const Duration(seconds: 12), // Set your receive timeout
      );

      final Dio dio = Dio(baseOptions);

      // Add Bearer token interceptor
      dio.interceptors.add(InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          // Retrieve and set the user's bearer token
          final String? token = await sl<SecureStorageService>()
              .read('token'); // Replace with your actual auth service
          if (token != null) {
            options.headers['Content-Type'] = 'application/json';
            options.headers['Authorization'] = 'Bearer $token';
          }

          return handler.next(options);
        },
      ));

      return dio;
    });

    sl.registerFactory(() => UserBloc(
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
        ));

    // User UseCases
    sl.registerLazySingleton(() => SignInUseCase(sl()));
    sl.registerLazySingleton(() => SignUpUseCase(sl()));
    sl.registerLazySingleton(() => CheckUserLoggedUseCase(sl()));
    sl.registerLazySingleton(() => ValidateAccountUseCase(sl()));
    sl.registerLazySingleton(() => GetsportsUseCase(sl()));
    sl.registerLazySingleton(() => SendImageAndSportsUseCase(sl()));
    sl.registerLazySingleton(() => GetUserInfoUseCase(sl()));

    sl.registerLazySingleton<BaseUserRepository>(() => UserRepository(sl()));

    sl.registerLazySingleton<BaseUserRemoteDataSource>(
        () => UserRemoteDataSource());
  }
}
