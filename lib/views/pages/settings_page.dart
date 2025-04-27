import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/expanded_flexible_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'el1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //   backgroundColor: Colors.blueAccent,
                //   textStyle: TextStyle(fontSize: 40.0),
                //   foregroundColor: Colors.amberAccent,
                // ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      behavior: SnackBarBehavior.floating,
                      content: Text('Shanck Bar'),
                    ),
                  );
                },
                child: Text('OpenSnackBar'),
              ),
              Center(
                child: Divider(
                  color: Colors.teal,
                  thickness: 2.0,
                  endIndent: 200.0,
                ),
              ),
              Container(height: 50.0, child: VerticalDivider()),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert title'),
                        content: Text('Alert content'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close dialog'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Open dialog'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: DropdownButton(
                  value: menuItem,

                  items: [
                    DropdownMenuItem(
                      child: Text('DropdownMeny1'),
                      value: 'el1',
                    ),
                    DropdownMenuItem(
                      child: Text('DropdownMeny2'),
                      value: 'el2',
                    ),
                    DropdownMenuItem(
                      child: Text('DropdownMeny3'),
                      value: 'el3',
                    ),
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
                child: Text('OpenSnackBar'),
              ),
              FilledButton(
                style: FilledButton.styleFrom(backgroundColor: Colors.cyan),
                onPressed: () {},
                child: Text('Click me'),
              ),
              TextButton(onPressed: () {}, child: Text('Click me')),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ExpandedFlexiblePage();
                      },
                    ),
                  );
                },
                child: Text('Show flexible and expanded widget'),
              ),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
