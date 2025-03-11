import 'package:flutter/material.dart';
import 'package:planova/features/authentication/pages/login_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Padding(
        // Add padding for better spacing
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              // Use Expanded to push the content to the top
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Make column only take up space needed.
                  children: [
                    Text(
                      "Planova",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 15.0), // Add some space above the button.
            SizedBox(
              width: double.infinity, // Make the button take full width
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => LoginPage(),
                    ),
                  );
                },
                child: Text("Get Started"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
