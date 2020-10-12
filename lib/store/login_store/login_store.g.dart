// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  final _$showPassAtom = Atom(name: '_LoginStore.showPass');

  @override
  bool get showPass {
    _$showPassAtom.reportRead();
    return super.showPass;
  }

  @override
  set showPass(bool value) {
    _$showPassAtom.reportWrite(value, super.showPass, () {
      super.showPass = value;
    });
  }

  final _$userNameValidAtom = Atom(name: '_LoginStore.userNameValid');

  @override
  bool get userNameValid {
    _$userNameValidAtom.reportRead();
    return super.userNameValid;
  }

  @override
  set userNameValid(bool value) {
    _$userNameValidAtom.reportWrite(value, super.userNameValid, () {
      super.userNameValid = value;
    });
  }

  final _$passWordValidAtom = Atom(name: '_LoginStore.passWordValid');

  @override
  bool get passWordValid {
    _$passWordValidAtom.reportRead();
    return super.passWordValid;
  }

  @override
  set passWordValid(bool value) {
    _$passWordValidAtom.reportWrite(value, super.passWordValid, () {
      super.passWordValid = value;
    });
  }

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  void onToggelShowPass() {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.onToggelShowPass');
    try {
      return super.onToggelShowPass();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showPass: ${showPass},
userNameValid: ${userNameValid},
passWordValid: ${passWordValid}
    ''';
  }
}
