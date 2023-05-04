// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GenerateController on GenerateControllerBase, Store {
  Computed<String>? _$userNameComputed;

  @override
  String get userName =>
      (_$userNameComputed ??= Computed<String>(() => super.userName,
              name: 'GenerateControllerBase.userName'))
          .value;
  Computed<String>? _$userIdentificationComputed;

  @override
  String get userIdentification => (_$userIdentificationComputed ??=
          Computed<String>(() => super.userIdentification,
              name: 'GenerateControllerBase.userIdentification'))
      .value;

  late final _$userAtom =
      Atom(name: 'GenerateControllerBase.user', context: context);

  @override
  UserEntity? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserEntity? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'GenerateControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$generateAsyncAction =
      AsyncAction('GenerateControllerBase.generate', context: context);

  @override
  Future<void> generate() {
    return _$generateAsyncAction.run(() => super.generate());
  }

  @override
  String toString() {
    return '''
user: ${user},
isLoading: ${isLoading},
userName: ${userName},
userIdentification: ${userIdentification}
    ''';
  }
}
