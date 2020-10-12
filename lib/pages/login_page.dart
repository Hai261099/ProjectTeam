import 'package:company_project/services/login_service.dart';
import 'package:company_project/store/login_store/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  final LoginStore loginStore = new LoginStore();
  LoginPage() {
    loginStore.onToggelShowPass();
  }
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginService loginService = LoginService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            constraints: BoxConstraints.expand(),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// Logo công ty
                  ///
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Container(
                        child: Image.asset(
                      "assets/images/logo_login.jpg",
                      fit: BoxFit.cover,
                    )),
                  ),

                  /// Tiêu đề đăng nhập
                  ///
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(
                          fontSize: 33,
                          color: Color(0xff2E3192),
                          fontFamily: "RobotoBold",
                        ),
                      )),

                  Form(
                      autovalidate: true,
                      key: formkey,
                      child: Column(
                        children: [
                          /// Nhập tài khoản
                          ///
                          userName(context),

                          /// Nhập mật khẩu
                          ///
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mật khẩu",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff707070),
                                    fontFamily: "RobotoBold",
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                passWord(context),
                              ],
                            ),
                          ),

                          /// Nút đăng nhập
                          ///
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                              child: SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: RaisedButton(
                                    onPressed: () {
                                      loginService.login(
                                          usernameController.text,
                                          passwordController.text);
                                          // Navigator.of(context).pushNamed('/home');
                                    },
                                    color: Color(0xff2e3192),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Text("Đăng nhập",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "RobotoBold",
                                          fontSize: 25,
                                        ))),
                              ))
                        ],
                      )),

                  /// Tạo tài khoản và quên mật khẩu
                  ///
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                    child: Container(
                        height: 130,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: Text(
                                "Tạo tài khoản",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: "RobotoMedium"),
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed("/registration");
                              },
                            ),
                            Text(
                              "Quên mật khẩu?",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontFamily: "RobotoMedium"),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            )));
  }

  String validatePass(value) {
    if (value.isEmpty) {
      return "Nhập mật khẩu";
    } else if (value.length < 6) {
      return "Mật khẩu phải lớn hơn 6 kí tự";
    } else if (value.length > 15) {
      return "Mật khẩu phải nhỏ hơn 15 kí tự";
    } else {
      return null;
    }
  }

  /// widget username
  ///
  Widget userName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 34, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tài khoản",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff707070),
              fontFamily: "RobotoBold",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: usernameController,
            validator: MultiValidator([
              RequiredValidator(errorText: "Nhập tài khoản"),
              EmailValidator(errorText: "Tài khoản nhập không đúng")
            ]),
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontFamily: "RobotoMedium",
            ),
            decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Container(
                  width: 50,
                  child: Icon(Icons.person),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xff2e3192)),
                    borderRadius: BorderRadius.circular(8))),
          ),
        ],
      ),
    );
  }

  /// widget PassWord
  ///
  Widget passWord(BuildContext context) {
    return Observer(
      builder: (context) {
        bool showPass = widget.loginStore.showPass;

        /// Nhập mật khẩu
        ///
        return Container(
          child: TextFormField(
            // controller: passController,
            controller: passwordController,
            obscureText: showPass,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontFamily: "RobotoMedium",
            ),
            validator: validatePass,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: widget.loginStore.onToggelShowPass,
                child: Icon(
                    showPass ? Icons.remove_red_eye : Icons.remove_red_eye),
              ),
              hintText: "Mật khẩu",
              prefixIcon: Container(
                width: 50,
                child: Icon(Icons.lock),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xff2e3192)),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
        );
      },
    );
  }
}
