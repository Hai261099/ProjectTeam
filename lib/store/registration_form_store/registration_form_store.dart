import 'package:mobx/mobx.dart';

part 'registration_form_store.g.dart';

class Registration = RegistrationBase with _$Registration;

abstract class RegistrationBase with Store {
  @observable
  bool showPassword = false;

  @action
  void password() {
    showPassword = !showPassword;
  }
}
