// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Registration on RegistrationBase, Store {
  final _$showPasswordAtom = Atom(name: 'RegistrationBase.showPassword');

  @override
  bool get showPassword {
    _$showPasswordAtom.reportRead();
    return super.showPassword;
  }

  @override
  set showPassword(bool value) {
    _$showPasswordAtom.reportWrite(value, super.showPassword, () {
      super.showPassword = value;
    });
  }

  final _$RegistrationBaseActionController =
      ActionController(name: 'RegistrationBase');

  @override
  void password() {
    final _$actionInfo = _$RegistrationBaseActionController.startAction(
        name: 'RegistrationBase.password');
    try {
      return super.password();
    } finally {
      _$RegistrationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showPassword: ${showPassword}
    ''';
  }
}
