import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_14_jp_app_design_challenge/features/screens/third_page.dart';

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
// ----------------------------------------------------------------------
// Überschrift einfügen:
// ----------------------------------------------------------------------
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
                    color: Colors.white,
                  ),
                ),
              ),
// ----------------------------------------------------------------------
// horizontal scrollbares Menü einfügen:
// ----------------------------------------------------------------------
              Positioned(
                top: 170,
                left: 16,
                child: SingleChildScrollView(
                  // scrollt nicht todo!
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 242, 210, 234),
                          ),
                          borderRadius: BorderRadius.circular(
                            32,
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.fastfood_outlined,
                              color: Colors.white60,
                              size: 24,
                            ),
                            Text(
                              " All Categories ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white60),
                            ),
                            Icon(
                              Icons.expand_more,
                              color: Colors.white60,
                              size: 32,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 242, 210, 234),
                          ),
                          borderRadius: BorderRadius.circular(
                            32,
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Salty",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 242, 210, 234),
                          ),
                          borderRadius: BorderRadius.circular(
                            32,
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Sweet",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white60),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 242, 210, 234),
                          ),
                          borderRadius: BorderRadius.circular(
                            32,
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Spicy",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white60),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
// ----------------------------------------------------------------------
// schräge Card (Top Card) einfügen:
// ----------------------------------------------------------------------
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
// ----------------------------------------------------------------------
// "Burger_3D" einfügen:
// ----------------------------------------------------------------------
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
// ----------------------------------------------------------------------
// Text  in die "Top Card" einfügen:
// ----------------------------------------------------------------------
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
                          "₳ 13.99",
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
// ----------------------------------------------------------------------
// "We Recommend" (vertikal scrollbare Cards) einfügen:
// ----------------------------------------------------------------------
              Positioned(
                top: 600,
                left: 16,
                child: GestureDetector(
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
                    image: AssetImage("assets/we_recommend.png"),
                    width: 420,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
// ----------------------------------------------------------------------
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------
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
// ----------------------------------------------------------------------
