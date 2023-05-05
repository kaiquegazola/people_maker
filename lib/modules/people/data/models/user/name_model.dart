import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/domain/domain.dart';

class NameModel extends NameEntity {
  const NameModel({
    required super.title,
    required super.first,
    required super.last,
  });

  factory NameModel.fromJson(Map<String, dynamic> json) {
    return NameModel(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String,
    );
  }

  IsarName toIsar() {
    return IsarName(
      title: title,
      first: first,
      last: last,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['first'] = first;
    map['last'] = last;
    return map;
  }
}
