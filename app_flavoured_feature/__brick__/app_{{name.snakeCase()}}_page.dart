import 'package:self_scanning_cvc/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';
import 'package:self_scanning_presentation/self_scanning_presentation.dart';

class App{{name.pascalCase()}}Page extends {{name.pascalCase()}}Page {
  App{{name.pascalCase()}}Page()
      : super(
          path: _path,
          name: route,
          bloc: (_) => getIt(),
          view: const App{{name.pascalCase()}}View(),
        );

  static const _path = '{{name.snakeCase()}}';

  static String get route => '/$_path';

  static void open(BuildContext context) => context.go(route);
}
