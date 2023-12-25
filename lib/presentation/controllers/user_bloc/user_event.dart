import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
  @override
  List<Object> get props => [];
}

class SignInEvent extends UserEvent {
  const SignInEvent();
}

class SignUpEvent extends UserEvent {
  const SignUpEvent();
}

class GetUserInfoEvent extends UserEvent {
  const GetUserInfoEvent();
}

class CheckUserLoggedEvent extends UserEvent {
  const CheckUserLoggedEvent();
}

class ValidAccountEvent extends UserEvent {
  const ValidAccountEvent();
}

class GetsportsEvent extends UserEvent {
  const GetsportsEvent();
}

class SendImageAndSportsEvent extends UserEvent {
  final List<int> imageBytes;
  final String imageType;
  final List<int> selectedSports;
  const SendImageAndSportsEvent({
    required this.imageBytes,
    required this.imageType,
    required this.selectedSports,
  });
}
