import 'dart:convert';

import 'package:company_project/models/login.dart';
import 'package:http/http.dart' as http;

class LoginService {
  final String api = 'http://657187c3af5c.ngrok.io/api/auth/signin';
  // Dio dio = Dio();

  // Future getData() {
  //   final data = http.get()
  // }

  Future<Login> login(String username, String password) async {
    final response = await http.post(api, headers: {
      'Accept': 'application/json',
    }, body: {
      "username": username,
      "password": password
    });
    if (response.statusCode == 200) {
      print(response.body);
      return Login.fromJson(json.decode(response.body));
    }
  }
}
