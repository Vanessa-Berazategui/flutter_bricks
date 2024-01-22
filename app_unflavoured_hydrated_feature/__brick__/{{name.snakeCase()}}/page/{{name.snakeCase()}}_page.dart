import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{package_name}}/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Page extends GoRoute {
  {{name.pascalCase()}}Page({
    super.path = _path,
    super.builder = _builder,
  });

  static const _path = '/{{name.snakeCase()}}';

  static Widget _builder(
    BuildContext context,
    GoRouterState state,
  ) => MaterialPage(
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => getIt<{{name.pascalCase()}}Bloc>(),
              child: {{name.pascalCase()}}View(),
            ),
  );
      
  static String get route => route;

  static void open(BuildContext context) => context.go(route);
}
