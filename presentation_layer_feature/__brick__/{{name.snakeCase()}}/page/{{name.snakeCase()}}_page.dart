
import 'package:{{package_name}}/src/core/core.dart';
import 'package:{{package_name}}/src/{{name.snakeCase()}}/bloc/{{name.snakeCase()}}_bloc.dart';
import 'package:{{package_name}}/src/{{package_name}}.dart';

abstract class {{name.pascalCase()}}Page<View extends Widget> extends GoRoute {
  {{name.pascalCase()}}Page({
    required super.path,
    required super.name,
    required CreateBloc<{{name.pascalCase()}}Bloc> bloc,
    required this.view,
  }) : super(
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: BlocProvider<{{name.pascalCase()}}Bloc>(
              create: bloc,
              child: view,
            ),
          ),
        );

  final View view;
}
