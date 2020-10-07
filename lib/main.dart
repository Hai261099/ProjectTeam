
import 'package:company_project/styles/theme.dart';
import 'package:flutter/material.dart';

import 'pages/registration_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(context),
      home: RegistrationForm(),
    );
  }
}
