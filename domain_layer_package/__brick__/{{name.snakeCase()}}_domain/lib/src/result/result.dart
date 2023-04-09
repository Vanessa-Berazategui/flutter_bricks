import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'failure.dart';

@freezed
class Result<T> with _$Result<T> {
  factory Result.success(T data) = _ResultSuccess;

  factory Result.failure(Failure failure) = _ResultFailure;
}
