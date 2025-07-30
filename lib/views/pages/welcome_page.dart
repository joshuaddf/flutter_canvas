import 'package:flutter/material.dart';
import 'package:flutter_canvas/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/welcome.json'),
                FittedBox(
                  child: Text(
                    "Flutter Canvas",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0, 
                      letterSpacing: 5.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(title: "Register",),
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50.0), 
                  ),
                  child: const Text("Get Started"),
                ),
                const SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(title: "Log In",),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50.0), // Fixed property
                  ),
                  child: const Text("Log In"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}