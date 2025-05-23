import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';
import 'package:flutter_application_1/views/pages/course_page.dart';
import 'package:flutter_application_1/views/widgets/container_widget.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.keyConcepts,
      KValue.keyConcepts,
      KValue.keyConcepts,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            HeroWidget(title: 'Login Home Page', nextPage: CoursePage()),
            SizedBox(height: 5.0),
            ...List.generate(list.length, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: 'This i11s description',
              );
            }),
            // Column(
            //   children: List.generate(8, (index) {
            //     return ContainerWidget(
            //       title: 'Basic Layout',
            //       description: 'This is description',
            //     );
            //   }),
            // ),
          ],
        ),
      ),
    );
  }
}
