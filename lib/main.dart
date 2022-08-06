import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext, Widget) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(199, 255, 147, 59),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            title: const Text('Stickman bluetooth MP'),
            centerTitle: true,
          ),
          body: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return _landscapeMode();
              } else {
                return _landscapeMode();
              }
            },
          ),
        );
      },
    );
  }

  Widget _landscapeMode() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 60,
              width: 120,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: const Color.fromARGB(255, 4, 29, 49),
                elevation: 15,
                minimumSize: const Size(100, 50),
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {},
              child: const Text('Create'),
            ),
            const SizedBox(
              height: 80,
              width: 150,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color.fromARGB(255, 90, 60, 4),
                elevation: 15,
                minimumSize: const Size(100, 50),
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {},
              child: const Text('Join'),
            ),
          ],
        ),
      ],
    );
  }
}
