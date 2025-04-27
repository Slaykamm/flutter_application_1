import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.teal,
                  height: 20.0,
                  child: Text('Hello'),
                ),
              ),
              Flexible(
                child: Container(
                  color: const Color.fromARGB(255, 255, 136, 0),
                  height: 20.0,
                  child: Text('Hel22222222222lo'),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  color: const Color.fromARGB(255, 142, 150, 0),
                  height: 20.0,
                  child: Text('Hel22222222222lo'),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal,
                  height: 20.0,
                  child: Text('Hello'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
