import 'package:flutter/material.dart';

class CustomTextInputFields extends StatefulWidget {
  const CustomTextInputFields({super.key});

  @override
  _CustomTextInputFieldsState createState() => _CustomTextInputFieldsState();
}

class _CustomTextInputFieldsState extends State<CustomTextInputFields> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 0),
        child: Column(
          children: [
            // Email Input Field
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.065,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: "Enter Your Email",
                hintStyle: TextStyle(color: Colors.grey[400]),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  // borderSide: BorderSide(color: Colors.yellowAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  // borderSide: BorderSide(color: Colors.yellowAccent, width: 1.0),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Password Input Field
            TextFormField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: "Enter Your Password",
                hintStyle: TextStyle(color: Colors.grey[400]),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: Colors.deepPurple,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  // borderSide: BorderSide(color: Colors.yellow, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  // borderSide: BorderSide(color: Colors.yellowAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  // borderSide: BorderSide(color: Colors.yellowAccent, width: 1.0),
                ),
              ),
            ),

            const SizedBox(height: 8),
            // Remember me and Forgot Password Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true, // Replace with your logic
                      onChanged: (bool? value) {
                        // Handle checkbox change
                      },
                      shape: CircleBorder(),
                    ),
                    Text("Remember me"),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Handle forgot password logic
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  // Handle sign-in logic here
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to sign up
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepPurple,
                    ), // Example color from the image
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
