import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{package_name}}/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Page extends GoRoute {
  {{name.pascalCase()}}Page:super(
          path: _path,
          name: route,
          builder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => getIt<{{name.pascalCase()}}Bloc>(),
              child: {{name.pascalCase()}}View(),
            ),
          ),
  );

  static const _path = '{{name.snakeCase()}}';
   
  static String get route => '/$_path';

  static void open(BuildContext context) => context.go(route);
}
