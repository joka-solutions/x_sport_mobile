import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:x_sport/core/constance/app_functions.dart';
import 'package:x_sport/domain/usecase/user_usecase/get_sports_usecase.dart';
import 'package:x_sport/domain/usecase/user_usecase/get_user_info_usecase.dart';
import 'package:x_sport/domain/usecase/user_usecase/send_image_and_sports_usecase.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/presentation/screens/home%20screens/main_screen.dart';
import 'package:x_sport/presentation/screens/sign_in_screen.dart';
import 'package:x_sport/presentation/screens/welcome_screen.dart';

import '../../../core/services/locator/service_locator.dart';
import '../../../core/utils/enums.dart';
import '../../../domain/usecase/user_usecase/check_user_logged_usecase.dart';
import '../../../domain/usecase/user_usecase/sign_in_usecase.dart';
import '../../../domain/usecase/user_usecase/sign_up_usecase.dart';
import '../../../domain/usecase/user_usecase/validate_account_usecase.dart';
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final SignInUseCase signInUseCase;
  final SignUpUseCase signUpUseCase;
  final CheckUserLoggedUseCase checkUserLoggedUseCase;
  final ValidateAccountUseCase validateAccountUseCase;
  final GetsportsUseCase getsportsUseCase;
  final SendImageAndSportsUseCase sendImageAndSportsUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;

  UserBloc(
    this.signInUseCase,
    this.signUpUseCase,
    this.checkUserLoggedUseCase,
    this.validateAccountUseCase,
    this.getsportsUseCase,
    this.sendImageAndSportsUseCase,
    this.getUserInfoUseCase,
  ) : super(const UserState()) {
    on<SignInEvent>(_signIn);
    on<SignUpEvent>(_signUp);
    on<CheckUserLoggedEvent>(_checkUserLogged);
    on<ValidAccountEvent>(_validateAccount);
    on<GetsportsEvent>(_getSports);
    on<SendImageAndSportsEvent>(_sendImageAndSports);
    on<GetUserInfoEvent>(_getUserInfo);
  }

  FutureOr<void> _signIn(SignInEvent event, Emitter<UserState> emit) async {
    EasyLoadingInit.startLoading();
    emit(state.copyWith(userSignInState: RequestState.loading));

    final result = await signInUseCase();

    result.fold((l) {
      EasyLoading.showError(l.message);
      emit(state.copyWith(
        userSignInState: RequestState.error,
        userSignInMessage: l.message,
      ));
    }, (r) {
      emit(state.copyWith(
        userSignIn: r,
        userSignInState: RequestState.loaded,
      ));
      EasyLoading.dismiss();
      Navigator.of(navigatorKey.currentContext!).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  FutureOr<void> _signUp(SignUpEvent event, Emitter<UserState> emit) async {
    EasyLoadingInit.startLoading();

    emit(state.copyWith(userSignUpState: RequestState.loading));
    final result = await signUpUseCase();
    result.fold((l) {
      EasyLoading.showError(l.message);

      emit(state.copyWith(
        userSignUpState: RequestState.error,
        userSignUpMessage: l.message,
      ));
    }, (r) {
      emit(state.copyWith(
        userSignUp: r,
        userSignUpState: RequestState.loaded,
      ));
      Navigator.of(navigatorKey.currentContext!).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  FutureOr<void> _getUserInfo(
      GetUserInfoEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(userSignInState: RequestState.loading));
    final result = await getUserInfoUseCase();
    result.fold(
      (l) => emit(state.copyWith(
        userSignInState: RequestState.error,
        userSignInMessage: l.message,
      )),
      (r) => emit(state.copyWith(
        userSignInState: RequestState.loaded,
        userSignIn: r,
      )),
    );
  }

  FutureOr<void> _checkUserLogged(
      CheckUserLoggedEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(userAuthState: UserAuthState.logging));
    final result = await checkUserLoggedUseCase();
    result.fold(
      (l) => emit(state.copyWith(
        userAuthState: UserAuthState.guest,
      )),
      (r) => emit(state.copyWith(
        userAuthState: UserAuthState.loggedIn,
      )),
    );
  }

  FutureOr<void> _validateAccount(
      ValidAccountEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(validateAccountState: VerifiedAccountState.verifing));

    final result = await validateAccountUseCase();

    result.fold(
      (l) => emit(state.copyWith(
        validateAccountState: VerifiedAccountState.isNotVerified,
        validateAccountMessage: l.message,
      )),
      (r) => emit(state.copyWith(
        validateAccount: true,
        validateAccountState: VerifiedAccountState.isVerified,
      )),
    );
  }

  FutureOr<void> _getSports(
      GetsportsEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(sportsState: RequestState.loading));
    final result = await getsportsUseCase();

    result.fold(
      (l) => emit(state.copyWith(
        sportsState: RequestState.error,
        sportsMessage: l.message,
      )),
      (r) => emit(state.copyWith(
        sports: r,
        sportsState: RequestState.loaded,
      )),
    );
  }

  FutureOr<void> _sendImageAndSports(
      SendImageAndSportsEvent event, Emitter<UserState> emit) async {
    // EasyLoadingInit.startLoading();
    emit(state.copyWith(userSignInState: RequestState.loading));

    final result = await sendImageAndSportsUseCase(
        event.imageBytes, event.imageType, event.selectedSports);

    result.fold((l) {
      EasyLoading.showError(l.message);
      emit(state.copyWith(
        userSignInState: RequestState.error,
        userSignInMessage: l.message,
      ));
    }, (r) {
      emit(state.copyWith(
        userSignIn: r,
        userSignInState: RequestState.loaded,
      ));
      EasyLoading.dismiss();
      Navigator.of(navigatorKey.currentContext!).pushReplacement(
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }
}
