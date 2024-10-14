import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,

        body: Column(
          children: [
            Image(image: AssetImage("assets/bg_startscreen.png")),
          ],
        ),
        //child: Text('Hello World!'),
      ),
    );
  }
}
