import 'package:equatable/equatable.dart';

abstract class BaseParams extends Equatable {
  const BaseParams();

  @override
  List<Object?> get props => [
        runtimeType,
      ];
}
