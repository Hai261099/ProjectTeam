import 'package:company_project/pages/login_page.dart';
import 'package:company_project/router/router.dart';
import 'package:company_project/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(context),
      home: LoginPage(),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
