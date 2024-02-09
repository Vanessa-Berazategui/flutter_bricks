import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.dart';
part 'result.freezed.dart';
part 'result.g.dart';

@freezed
sealed class Result<T> with _$Result<T> {
  factory Result.success(T data) = _ResultSuccess;

  factory Result.failure(Failure failure) = _ResultFailure;
}
