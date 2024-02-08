import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class BaseParams extends Equatable {
  const BaseParams();

  @override
  List<Object?> get props => [
        runtimeType,
      ];
}
