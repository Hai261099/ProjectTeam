import 'package:company_project/constants.dart';
import 'package:company_project/format_txt.dart';
import 'package:company_project/store/registration_form_store/registration_form_store.dart';
import 'package:company_project/styles/theme.dart';
import 'package:company_project/validations/registration_form_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'bottom_bar.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final registration = Registration();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final RegistrationValidation registrationValidation =
      RegistrationValidation();

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomBar()));
    }
  }

  String validateConfirmPassword(String value) {
    if (value.length == 0) {
      return 'Vui lòng nhập mật khẩu';
    } else if (value != _password.text) {
      return 'Mật khẩu không đúng';
    } else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(36.0, 65.0, 36.0, 0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Logo
                Image(
                  image: AssetImage('assets/images/logo_signup.png'),
                  width: 55.0,
                  height: 55.0,
                ),
                SizedBox(
                  height: 56.0,
                ),

                //Title
                Center(
                  child: Text('Đăng ký tài khoản',
                      style: TextStyle(
                          color: theme(context).primaryColor,
                          fontFamily: 'RobotoBold',
                          fontSize: 33.0)),
                ),

                //Username
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 44, 0, 10),
                  child: Text('Tài khoản',
                      style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          fontSize: 16.0,
                          color: titleColor)),
                ),
                TextFormField(
                  ///format of textfield
                  inputFormatters: [
                    ///no whitespace in textfield
                    FilteringTextInputFormatter.deny(RegExp(r"\s"))
                  ],
                  controller: _username,

                  ///validate username
                  validator: registrationValidation.validateEmail,

                  ///max character in textfield
                  maxLength: 32,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person), //input icon
                      hintText: "Email...",
                      hintStyle: TextStyle(
                          color: inputTextColor,
                          fontSize: 18,
                          fontFamily: 'RobotoMedium'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      contentPadding: EdgeInsets.fromLTRB(20, 14, 0, 10)),
                ),

                //Password
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 16, 0, 10),
                  child: Text('Mật khẩu',
                      style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          fontSize: 16.0,
                          color: titleColor)),
                ),
                //password input
                passwordInput(context),

                //Confirm password
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 16, 0, 10),
                  child: Text('Xác nhận mật khẩu',
                      style: TextStyle(
                          fontFamily: 'RobotoMedium',
                          fontSize: 16.0,
                          color: titleColor)),
                ),
                //confirm password input
                confirmPasswordInput(context),

                //Sign Up Button
                signUpButton(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget passwordInput(BuildContext context) {
    return Observer(
      builder: (context) => TextFormField(
        controller: _password,

        ///format of textfield
        inputFormatters: [
          ///all characters in lowercase
          LowerCaseTxt(),

          ///no whitespace in textfield
          FilteringTextInputFormatter.deny(RegExp(r"\s"))
        ],

        ///validate password
        validator: registrationValidation.validatePassword,

        ///max characters in textfield
        maxLength: 20,
        obscureText: !registration.showPassword,
        decoration: InputDecoration(

            ///show and hide password
            suffixIcon: GestureDetector(
                child: Icon(Icons.remove_red_eye),
                onTap: registration.password),
            prefixIcon: Icon(Icons.lock),
            hintText: "Nhập mật khẩu...",
            hintStyle: TextStyle(
                color: inputTextColor,
                fontSize: 18,
                fontFamily: 'RobotoMedium'),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
            contentPadding: EdgeInsets.fromLTRB(20, 14, 0, 10)),
      ),
    );
  }

  Widget confirmPasswordInput(BuildContext context) {
    return Observer(
      builder: (context) => TextFormField(
        controller: _confirmPassword,

        ///validate confirm password
        validator: validateConfirmPassword,

        ///format of textfield
        inputFormatters: [
          ///all characters in lowercase
          LowerCaseTxt(),

          ///No whitespace in textfield
          FilteringTextInputFormatter.deny(RegExp(r"\s"))
        ],

        ///max characters in textfield
        maxLength: 20,
        obscureText: !registration.showPassword,
        decoration: InputDecoration(

            ///show and hide confirm password
            suffixIcon: GestureDetector(
                child: Icon(Icons.remove_red_eye),
                onTap: registration.password),
            prefixIcon: Icon(Icons.security), //input icon
            hintText: "Xác nhận mật khẩu...",
            hintStyle: TextStyle(
                color: inputTextColor,
                fontSize: 18,
                fontFamily: 'RobotoMedium'),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
            contentPadding: EdgeInsets.fromLTRB(20, 14, 0, 10)),
      ),
    );
  }

  Widget signUpButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 36, 0, 100),
      child: Center(
        child: Container(
          height: 45,
          width: 333,
          child: RaisedButton(
            onPressed: _validateInputs,
            color: theme(context).primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            child: Text(
              'Đăng ký',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'RobotoBold', color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
