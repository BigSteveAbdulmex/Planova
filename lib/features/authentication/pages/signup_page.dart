import 'package:flutter/material.dart';
import 'package:planova/features/authentication/widgets/auth_appbar.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAuthAppbar(),
            Text(
              "Create an account",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
