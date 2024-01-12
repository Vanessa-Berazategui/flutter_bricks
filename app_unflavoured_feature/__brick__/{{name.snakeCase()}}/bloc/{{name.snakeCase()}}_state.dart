part of '{{name.snakeCase()}}_bloc.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State() = _{{name.pascalCase()}}State;

  factory {{name.pascalCase()}}State.init() => const {{name.pascalCase()}}State();
}
