abstract interface class BaseModel {
  Map<String, dynamic> toJson();
}

extension BaseModelX on BaseModel {
  String get jsonString => jsonEncode(toJson());
}
