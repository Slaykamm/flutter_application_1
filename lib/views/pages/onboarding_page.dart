import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';
import 'package:flutter_application_1/views/pages/login_page.dart';

import 'package:flutter_application_1/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lotties/animationDragon.json',
                  height: 400.0,
                ),

                SizedBox(height: 20.0),
                Text(
                  'asdfjhasdkljfhaskjldfhkjlasdf',
                  style: KTextStyle.titleTealText,
                  textAlign: TextAlign.justify,
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Register');
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.maxFinite, 40.0),
                  ),
                  child: Text('Next'),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
