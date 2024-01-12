import 'package:{{name.snakeCase()}}_presentation/{{name.snakeCase()}}_presentation.dart';

typedef CreateBloc<T extends BlocBase<dynamic>> = T Function(
  BuildContext context,
);

typedef CreateBlocWithParam<T extends BlocBase<dynamic>> = T Function(
  BuildContext context,
  dynamic param1,
);
