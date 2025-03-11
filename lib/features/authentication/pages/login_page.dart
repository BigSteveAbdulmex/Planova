import 'package:flutter/material.dart';
import 'package:planova/features/authentication/widgets/auth_appbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAuthAppbar(),
          ],
        ),
      ),
    );
  }
}
