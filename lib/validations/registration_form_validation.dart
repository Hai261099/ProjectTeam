

class RegistrationValidation {
  String validateEmail(String value) {
    if (value.length == 0) {
      return 'Vui lòng nhập tài khoản';
    }
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Tài khoản nhập không đúng';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.length == 0) {
      return 'Vui lòng nhập mật khẩu';
    } else if (value.length < 6) {
      return 'Mật khẩu phải có nhiều hơn 6 kí tự';
    } else
      return null;
  }
}
