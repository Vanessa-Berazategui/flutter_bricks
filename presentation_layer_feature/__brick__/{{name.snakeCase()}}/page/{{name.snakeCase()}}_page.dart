import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{package_name}}/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Page extends GoRoute {
  {{name.pascalCase()}}Page():super(
          path: _path,
          builder: _builder,
        );

  static const _path = '/{{name.snakeCase()}}';

  static Widget _builder(
    BuildContext context,
    GoRouterState state,
  ) => 
      const {{name.pascalCase()}}View();
      
  static void open(BuildContext context) => context.go(_path);
}
