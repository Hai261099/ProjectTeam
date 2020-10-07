import 'package:flutter/material.dart';

ThemeData theme(BuildContext context) {
  return Theme.of(context).copyWith(
      primaryColor: Color(0xFF2E3192),
      appBarTheme: AppBarTheme(color: Color(0xFF2E3192)));
}
