import 'package:equatable/equatable.dart';

class NameEntity extends Equatable {
  const NameEntity({
    required this.title,
    required this.first,
    required this.last,
  });

  final String title;
  final String first;
  final String last;

  @override
  List<Object?> get props => [
        title,
        first,
        last,
      ];
}
