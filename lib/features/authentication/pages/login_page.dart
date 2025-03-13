import 'package:flutter/material.dart';

import 'package:planova/features/authentication/widgets/auth_appbar.dart';
import 'package:planova/features/authentication/widgets/custom_text_input_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAuthAppbar(),
            const SizedBox(height: 10),
            // Sign In text
            Text(
              "Sign In to your account",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
            ),
            // Email and password input fields
            CustomTextInputFields(),
          ],
        ),
      ),
    );
  }
}
