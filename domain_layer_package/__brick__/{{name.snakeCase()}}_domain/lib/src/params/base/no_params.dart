import 'package:{{name.snakeCase()}}_domain/src/payload/base/base.dart';

class NoParams extends BaseParams {
  const NoParams();

  @override
  List<Object?> get props => [];
}
