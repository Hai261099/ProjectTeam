
import 'package:company_project/pages/bottom_bar.dart';
import 'package:company_project/pages/login_page.dart';
import 'package:company_project/pages/registration_form.dart';
import 'package:company_project/pages/waiting_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => LoginPage());
        break;
      case '/registration':
        return MaterialPageRoute(builder: (context) => RegistrationForm());
        break;
      case '/home':
        return MaterialPageRoute(builder: (context) => BottomBar());
        break;
      default:
        return MaterialPageRoute(builder: (context) => WaittingPage());
    }
  }
}
