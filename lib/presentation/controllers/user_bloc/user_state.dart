import 'package:equatable/equatable.dart';
import 'package:x_sport/data/dtos/sport_dto/sport_dto.dart';
import '../../../core/utils/enums.dart';
import '../../../data/dtos/user_dto/user_dto.dart';

class UserState extends Equatable {
  final bool userData;
  final EmailAuthState userDataState;
  final String userDataMessage;

  final bool validateAccount;
  final VerifiedAccountState validateAccountState;
  final String validateAccountMessage;

  final UserDto userSignUp;
  final RequestState userSignUpState;
  final String userSignUpMessage;

  final UserDto userSignIn;
  final RequestState userSignInState;
  final String userSignInMessage;

  final bool userAuth;
  final UserAuthState userAuthState;
  final String userAuthMessage;

  final List<SportDto> sports;
  final RequestState sportsState;
  final String sportsMessage;

  const UserState({
    this.userData = false,
    this.userDataState = EmailAuthState.Authenticating,
    this.userDataMessage = '',
    this.validateAccount = false,
    this.validateAccountState = VerifiedAccountState.verifing,
    this.validateAccountMessage = '',
    this.userSignUp = const UserDto(),
    this.userSignUpState = RequestState.loading,
    this.userSignUpMessage = '',
    this.userSignIn = const UserDto(),
    this.userSignInState = RequestState.loading,
    this.userSignInMessage = '',
    this.userAuth = false,
    this.userAuthState = UserAuthState.guest,
    this.userAuthMessage = '',
    this.sports = const [],
    this.sportsState = RequestState.loading,
    this.sportsMessage = '',
  });

  UserState copyWith({
    bool? userData,
    EmailAuthState? userDataState,
    String? userDataMessage,
    bool? validateAccount,
    VerifiedAccountState? validateAccountState,
    String? validateAccountMessage,
    UserDto? userSignUp,
    RequestState? userSignUpState,
    String? userSignUpMessage,
    UserDto? userSignIn,
    RequestState? userSignInState,
    String? userSignInMessage,
    bool? userAuth,
    UserAuthState? userAuthState,
    String? userAuthMessage,
    List<SportDto>? sports,
    RequestState? sportsState,
    String? sportsMessage,
  }) {
    return UserState(
      userData: userData ?? this.userData,
      userDataState: userDataState ?? this.userDataState,
      userDataMessage: userDataMessage ?? this.userDataMessage,
      validateAccount: validateAccount ?? this.validateAccount,
      validateAccountState: validateAccountState ?? this.validateAccountState,
      validateAccountMessage:
          validateAccountMessage ?? this.validateAccountMessage,
      userSignUp: userSignUp ?? this.userSignUp,
      userSignUpState: userSignUpState ?? this.userSignUpState,
      userSignUpMessage: userSignUpMessage ?? this.userSignUpMessage,
      userSignIn: userSignIn ?? this.userSignIn,
      userSignInState: userSignInState ?? this.userSignInState,
      userSignInMessage: userSignInMessage ?? this.userSignInMessage,
      userAuth: userAuth ?? this.userAuth,
      userAuthState: userAuthState ?? this.userAuthState,
      userAuthMessage: userAuthMessage ?? this.userAuthMessage,
      sports: sports ?? this.sports,
      sportsState: sportsState ?? this.sportsState,
      sportsMessage: sportsMessage ?? this.sportsMessage,
    );
  }

  @override
  List<Object?> get props => [
        userData,
        userDataState,
        userDataMessage,
        validateAccount,
        validateAccountState,
        validateAccountMessage,
        userSignUp,
        userSignUpState,
        userSignUpMessage,
        userSignIn,
        userSignInState,
        userSignInMessage,
        userAuth,
        userAuthState,
        userAuthMessage,
        sports,
        sportsState,
        sportsState,
      ];
}
