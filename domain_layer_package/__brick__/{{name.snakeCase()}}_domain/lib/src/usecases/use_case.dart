import 'package:{{name.snakeCase()}}_domain/{{name.snakeCase()}}_domain.dart';

abstract class UseCase<Type, Params> {
  const UseCase();
  Future<Result<Type>> call(Params params);
}

class NoParams {
  const NoParams();
}
