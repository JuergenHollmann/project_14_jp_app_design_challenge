import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg_startscreen.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
                    







      ),
    );
  }
}
//          child: Image: AssetImage("assets/chick cupcakes_3D.png"),
