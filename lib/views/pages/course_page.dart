import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(title: 'Course page'),

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
      ),
    );
  }
}
