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
              const Positioned(
                top: 650,
                right: 20,
                left: 20,
                bottom: 50,
                child: OrderNowClipRRect(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderNowClipRRect extends StatelessWidget {
  const OrderNowClipRRect({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(32)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        // blendMode: BlendMode.difference, // dunkel mit overlay
        // blendMode: BlendMode.hardLight, // sieht besser aus
        // blendMode: BlendMode.screen, // auch zu gebrauchen
        // blendMode: BlendMode.src, // passt fast zur Vorlage
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.white.withOpacity(0.03),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: Colors.white, width: 0.2),
          ),
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
              SizedBox(height: 24),
              ButtonOrderNow(),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonOrderNow extends StatelessWidget {
  const ButtonOrderNow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log("Wechsle zur Seite 2 = SecondPage");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondPage(),
          ),
        );
      },
      child: const Image(
        image: AssetImage("assets/button_order_now.png"),
        width: 235,
      ),
    );
  }
}
