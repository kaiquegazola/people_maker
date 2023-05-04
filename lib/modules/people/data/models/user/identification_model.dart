import 'package:people_maker/modules/people/domain/entities/entities.dart';

class IdentificationModel extends IdentificationEntity {
  const IdentificationModel({
    required super.name,
    required super.value,
  });

  factory IdentificationModel.fromJson(Map<String, dynamic> json) {
    return IdentificationModel(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }
}
