import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_14_jp_app_design_challenge/second_page.dart';

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
              ),
              Positioned(
                top: 650,
                right: 20,
                left: 20,
                bottom: 80,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(32)),
                  // child: const Color.fromARGB(195, 150, 21, 21),
                  // borderOnForeground: true,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Column(
                      children: [
                        SizedBox(height: 30),
                        Text(
                          "Feeling Snackish Today?",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(32, 8, 32, 0),
                          child: Text(
                            "Explore Angi's most popular snack selection and get instantly happy",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        DesignButton1(),
                      ],
                    ),
                  ),
                ),

                // child: Card(
                //   color: Color.fromARGB(195, 150, 21, 21),
                //   borderOnForeground: true,
                //   child: Column(
                //     children: [
                //       SizedBox(height: 30),
                //       Text(
                //         "Feeling Snackish Today?",
                //         style: TextStyle(
                //             fontSize: 26,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.fromLTRB(32, 8, 32, 0),
                //         child: Text(
                //           "Explore Angi's most popular snack selection and get instantly happy",
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //             fontSize: 14,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DesignButton1 extends StatelessWidget {
  const DesignButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        log("Wechsle zur Seite 2 = SecondPage");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondPage(),
          ),
        );
      },

      // style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

      child: const Text(
        "Order Now",
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
