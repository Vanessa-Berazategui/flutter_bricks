import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{name.snakeCase()}}_bloc.freezed.dart';
part '{{name.snakeCase()}}_state.dart';

@injectable
class {{name.pascalCase()}}Bloc extends Cubit<{{name.pascalCase()}}State> {
{{name.pascalCase()}}Bloc() : super({{name.pascalCase()}}State.init());

}
