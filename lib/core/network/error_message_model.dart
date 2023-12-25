import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final String message;
  const ErrorModel({
    required this.message,
  });

  factory ErrorModel.formJson(Map<String, dynamic> json) {
    return ErrorModel(
      message: json["message"] ?? '',
    );
  }

  @override
  List<Object?> get props => [
        message,
      ];
}

class LocalErrorModel extends Equatable {
  final String message;
  const LocalErrorModel({
    required this.message,
  });

  @override
  List<Object?> get props => [
        message,
      ];
}
