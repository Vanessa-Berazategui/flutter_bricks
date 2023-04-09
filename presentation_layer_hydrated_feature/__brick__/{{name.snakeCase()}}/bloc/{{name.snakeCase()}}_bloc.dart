import 'dart:async';
import 'dart:convert';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{name.snakeCase()}}_bloc.freezed.dart';
part '{{name.snakeCase()}}_bloc.g.dart';
part '{{name.snakeCase()}}_state.dart';

@injectable
class {{name.pascalCase()}}Bloc extends HydratedCubit<{{name.pascalCase()}}State> {
{{name.pascalCase()}}Bloc() : super({{name.pascalCase()}}State.init());

    @override
    {{name.pascalCase()}}State? fromJson(Map<String, dynamic> json) =>
      {{name.pascalCase()}}State.fromJson(json);

    @override
    Map<String, dynamic>? toJson({{name.pascalCase()}}State state) => state.toJson();
}
