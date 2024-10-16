import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_14_jp_app_design_challenge/third_page.dart';

void main() {
  runApp(const SecondPage());
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg_mainscreen.png"),
              fit: BoxFit.cover,
            ),
          ),
// ----------------------------------------------------------------------------------------
// Überschrift einfügen:
// ----------------------------------------------------------------------------------------
          child: Stack(
            children: [
              const Positioned(
                top: 76,
                left: 16,
                right: 50,
                child: Text(
                  "Choose Your Favorite Snack",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
// ----------------------------------------------------------------------------------------
// horizontal scrollbares Menü einfügen:
              // const Padding(
              //   padding: EdgeInsets.only(left: 16),
              //   child: SecondPageScrollMenue(),
              // ),

              // Positioned(
              //   top: 140,
              //   left: 16,
              //   right: 0,
              //   child: Text(
              //     "Choose Your Favorite Snack",
              //     style: TextStyle(
              //         fontSize: 26,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white),
              //   ),
              // ),
// ----------------------------------------------------------------------------------------
// schräge Card (Top Card) einfügen:
// ----------------------------------------------------------------------------------------
              const Positioned(
                top: 252,
                left: 16,
                child: Image(
                  image: AssetImage("assets/Top Card.png"),
                  width: 400,
                  //color: Color.fromARGB(162, 36, 36, 36), // transparenz?
                  fit: BoxFit.cover,
                ),
              ),
// ----------------------------------------------------------------------------------------
// "Burger_3D" einfügen:
// ----------------------------------------------------------------------------------------
              Positioned(
                top: 315,
                right: 32,
                child: Transform.scale(
                  scale: 1.1,
                  child: const Image(
                    image: AssetImage("assets/Burger_3D.png"),
                  ),
                ),
              ),
// ----------------------------------------------------------------------------------------
// Text  in die "Top Card" einfügen:
// ----------------------------------------------------------------------------------------
              const Padding(
                padding: EdgeInsets.fromLTRB(32, 180, 16, 0),
                child: Positioned(
                  top: 160,
                  left: 16,
                  right: 16,
                  child: Column(
                    children: [
                      SizedBox(height: 8),
                      SizedBox(height: 85),
                      SizedBox(
                        height: 14,
                        width: 400,
                        // mainAxisAlignment: MainAxisAlignment.end
                        // child: Image(image: AssetImage("assets/Star.png"),
                        // child: Icon(Icons.star),

                        child: Text(
                          "                                                                                                   4.8",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          "Angi's Yummy Burger",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 400,
                        child: Text(
                          "Delish vegan burger\nthat tastes like heaven",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        width: 400,
                        height: 60,
                        child: Text(
                          "₳ 13.00",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      ButtonAddToOrder(),
                      // ShowModalBottomSheetOnThirdPage(),
                    ],
                  ),
                ),
              ),
// ----------------------------------------------------------------------------------------
// vertikal scrollbare Cards einfügen:
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------------------------
class ButtonAddToOrder extends StatelessWidget {
  const ButtonAddToOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            log("Wechsle zur Seite 3 = ThirdPage");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ThirdPage(),
              ),
            );
          },
          child: const Image(
            image: AssetImage("assets/button_add_to_order.png"),
            width: 120,
          ),
        ),
      ],
    );
  }
}
// ----------------------------------------------------------------------------------------