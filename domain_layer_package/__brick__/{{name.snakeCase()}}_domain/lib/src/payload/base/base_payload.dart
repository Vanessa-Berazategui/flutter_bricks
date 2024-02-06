import 'package:equatable/equatable.dart';

abstract class BasePayload extends Equatable {
  const BasePayload();

  @override
  List<Object?> get props => [
        runtimeType,
      ];
}
