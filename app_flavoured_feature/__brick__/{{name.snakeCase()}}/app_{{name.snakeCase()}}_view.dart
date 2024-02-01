import 'package:{{package_name}}/app/extensions/extensions.dart';

class App{{name.pascalCase()}}View extends StatelessWidget {
  const App{{name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return {{name.pascalCase()}}View(
              appBarText:'{{name.pascalCase()}} View',
            );
  }
}
