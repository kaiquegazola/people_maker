import 'package:equatable/equatable.dart';

class IdentificationEntity extends Equatable {
  const IdentificationEntity({
    required this.name,
    required this.value,
  });

  final String? name;
  final String? value;

  @override
  List<Object?> get props => [name, value];
}
