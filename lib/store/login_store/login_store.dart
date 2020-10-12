// import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  bool showPass = false;
  @observable
  bool userNameValid = false;
  @observable
  bool passWordValid = false;
  // @observable
  // TextEditingController userController = new TextEditingController();
  // TextEditingController passController = new TextEditingController();
  @action
  void onToggelShowPass() {
    showPass = !showPass;
  }

  // @action
  // void onSignInClicked() {
  //   if (userController.text.length < 6 && userController.text.contains("@")) {
  //     userNameValid = true;
  //   } else {
  //     userNameValid = false;
  //   }
  //   if (passController.text.length < 8) {
  //     passWordValid = true;
  //   } else {
  //     passWordValid = false;
  //   }
  // }
}
