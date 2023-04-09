part of 'result.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.unexpected(Object e) = _FailureUnexpected;

  const factory Failure.server({
    required String message,
  }) = _FailureServer;
}
