import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/login_page.dart';
import 'package:flutter_application_1/views/pages/onboarding_page.dart';
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
                Lottie.asset(
                  'assets/lotties/animationDragon.json',
                  height: 400.0,
                ),
                FittedBox(
                  child: Text(
                    'Flutter mappp',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 150.0,
                      letterSpacing: 50.0,
                    ),
                  ),
                ),
                // HeroWidget(),
                SizedBox(height: 20.0),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OnboardingPage();
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.maxFinite, 40.0),
                  ),
                  child: Text('Get Started'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Login');
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.maxFinite, 40.0),
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
