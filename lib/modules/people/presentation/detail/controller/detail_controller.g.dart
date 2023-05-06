// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailController on DetailControllerBase, Store {
  Computed<String>? _$userNameComputed;

  @override
  String get userName =>
      (_$userNameComputed ??= Computed<String>(() => super.userName,
              name: 'DetailControllerBase.userName'))
          .value;
  Computed<String>? _$userIdentificationComputed;

  @override
  String get userIdentification => (_$userIdentificationComputed ??=
          Computed<String>(() => super.userIdentification,
              name: 'DetailControllerBase.userIdentification'))
      .value;
  Computed<String>? _$userAddressComputed;

  @override
  String get userAddress =>
      (_$userAddressComputed ??= Computed<String>(() => super.userAddress,
              name: 'DetailControllerBase.userAddress'))
          .value;

  late final _$userAtom =
      Atom(name: 'DetailControllerBase.user', context: context);

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

  @override
  String toString() {
    return '''
user: ${user},
userName: ${userName},
userIdentification: ${userIdentification},
userAddress: ${userAddress}
    ''';
  }
}
