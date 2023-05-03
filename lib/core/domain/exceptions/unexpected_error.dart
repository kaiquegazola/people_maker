import 'package:people_maker/core/domain/domain.dart';

class UnexpectedError extends DomainError {
  UnexpectedError({
    String? message,
    super.code,
  }) : super(message: message ?? R.string.genericErrorMessage);
}
