import 'package:flutter/material.dart';
import 'package:login/login_page.dart';
import 'package:login/signup.dart';

import 'Student.dart';

void main() {
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/loggedIn': (context) => const LoginPage(),
          '/signup': (context) => const SignUP(),
          "/studentform": (context) => const StudentForm(),
        },
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Login Page"),
          ),
          body: const LoginPage(),
        ));
  }
}
