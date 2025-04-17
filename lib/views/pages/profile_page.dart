import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'el1';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                value: menuItem,

                items: [
                  DropdownMenuItem(child: Text('DropdownMeny1'), value: 'el1'),
                  DropdownMenuItem(child: Text('DropdownMeny2'), value: 'el2'),
                  DropdownMenuItem(child: Text('DropdownMeny3'), value: 'el3'),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),
            Checkbox.adaptive(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile.adaptive(
              tristate: true,
              title: Text('Click me'),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text('Switch me'),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider.adaptive(
              max: 10.0,
              divisions: 10,
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            InkWell(
              splashColor: Colors.amber,
              onTap: () {
                print('VALUE');
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
            ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.blueAccent,
              //   textStyle: TextStyle(fontSize: 40.0),
              //   foregroundColor: Colors.amberAccent,
              // ),
              onPressed: () {},
              child: Text('Click me'),
            ),
            FilledButton(
              style: FilledButton.styleFrom(backgroundColor: Colors.cyan),
              onPressed: () {},
              child: Text('Click me'),
            ),
            TextButton(onPressed: () {}, child: Text('Click me')),
            OutlinedButton(onPressed: () {}, child: Text('Click me')),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    );
  }
}
