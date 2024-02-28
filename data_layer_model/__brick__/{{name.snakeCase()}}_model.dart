import 'package:{{package_name}}_data/src/models/base/base_model.dart';
import 'package:{{package_name}}_domain/billing_profile_domain.dart';
import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}_model.g.dart';

@JsonSerializable(explicitToJson: true)
class {{name.pascalCase()}}Model extends {{name.pascalCase()}} implements BaseModel {
  const {{name.pascalCase()}}Model();

  factory {{name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}ModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _${{name.pascalCase()}}ModelToJson(this);
}
