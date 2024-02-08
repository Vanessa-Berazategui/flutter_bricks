import 'package:{{name.snakeCase()}}_domain/{{name.snakeCase()}}_domain.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BaseUseCase<Type, Params extends BaseParams> {
  const BaseUseCase();

  Future<Result<Type>> call(Params params);
}
