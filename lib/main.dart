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
          child: Stack(
            children: [
              Positioned(
                right: 26,
                top: 310,
                child: Transform.scale(
                  scale: 2.6,
                  child: const Image(
                    image: AssetImage("assets/chick cupcakes_3D.png"),
                  ),
                ),
              ),
              Positioned(
                top: 540,
                right: 20,
                child: Transform.scale(
                  scale: 1.14,
                  child: const Image(
                    image: AssetImage("assets/T2.png"),
                  ),
                ),

                // child: Image(
                //   image: AssetImage("assets/T2.png"),
                //   height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
