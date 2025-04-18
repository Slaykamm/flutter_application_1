import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/notifiers.dart';
import 'package:flutter_application_1/views/pages/welcome_page.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: ListTile(
        title: Text('LogOut'),
        onTap: () {
          selectedPageNotifier.value = 0;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return WelcomePage();
              },
            ),
          );
        },
      ),
    );
  }
}
