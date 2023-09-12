import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        leading: IconButton(
          onPressed: () => {
            Navigator.of(context).pop(),
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () => {
              debugPrint('Actions'),
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/images.jpg'),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is  text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.blue : Colors.red,
              ),
              onPressed: () => {
                debugPrint('elevatedButton'),
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () => {
                debugPrint('OutlinedButton'),
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () => {
                debugPrint('TextButton'),
              },
              child: const Text('TextButton Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => {
                debugPrint('this is the row'),
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.indigo,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.indigo,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBoolean) => {
                      setState(() {
                        isSwitch = newBoolean;
                      }),
                    }),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newBool) => {
                      setState(() {
                        isCheckBox = newBool;
                      })
                    }),
            Image.network(
                'https://server-kh.com/assets/category/_1686804975.webp'),
          ],
        ),
      ),
    );
  }
}
