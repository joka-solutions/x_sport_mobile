import '../network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorModel errorModel;
  const ServerException({
    required this.errorModel,
  });
}

class LocalStorageException implements Exception {
  final String errorModel;
  const LocalStorageException({
    required this.errorModel,
  });
}
