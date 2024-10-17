import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_14_jp_app_design_challenge/main.dart';
import 'package:project_14_jp_app_design_challenge/features/screens/second_page.dart';

void main() {
  runApp(const ThirdPage());
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/bg_mainscreen.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
// ----------------------------------------------------------------------
// Überschrift einfügen:
// ----------------------------------------------------------------------
          child: const Stack(
            children: [
              Positioned(
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
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 500),
                    ShowModalBottomSheetOnThirdPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowModalBottomSheetOnThirdPage extends StatefulWidget {
  const ShowModalBottomSheetOnThirdPage({super.key});
  @override
  State<ShowModalBottomSheetOnThirdPage> createState() =>
      _ShowModalBottomSheetOnThirdPageState();
}

class _ShowModalBottomSheetOnThirdPageState
    extends State<ShowModalBottomSheetOnThirdPage> {
  int countItems = 1; // Zähler für die Anzahl der Produkte
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        //style: ButtonStyle(backgroundColor: Color.fromARGB(255, 87, 36, 36),),
        child: const Text(''),
        onPressed: () {
          showModalBottomSheet(
            scrollControlDisabledMaxHeightRatio: 0.885,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height,
                    //   width: MediaQuery.of(context).size.width,
                    // ),
                    Container(
                      height: 825, // schließt genau unten ab
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            // Color.fromARGB(255, 63, 24, 24),
                            // Color.fromARGB(255, 73, 58, 58)
                            Color.fromARGB(255, 40, 36, 28),
                            Color.fromARGB(255, 49, 52, 46)
                            //Color.fromARGB(255, 52, 66, 64) // Originalfarbe
                          ],
                        ),
                      ),
                      child: const ButtonAddOrderForSumP3(),
                    ),
                    const BigImageCupcakeP3(),
                    const ButtonCancelP3(),
                    const ClipRRectMoglisCupP3(),
                    const ImageIngredientsP3(),
                    const IconButtonMinusP3(),
// ----------------------------------------------------------------------
// "Icon Plus" und "Zähler für die Anzahl der Produkte" einfügen:
// ----------------------------------------------------------------------
                    Positioned(
                      top: 652, // war vorher bei "Icon" auf 660
                      right: 20, // war vorher bei "Icon" auf 24
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "$countItems ",
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          IconButton(
                            iconSize: 44,
                            icon: const Icon(
                              Icons.add_circle_outline,
                              color: Colors.white38,
                            ),
                            onPressed: () {
                              setState(() {
                                countItems++;
                                Text(
                                  "$countItems  ",
                                  style: const TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white70,
                                  ),
                                );
                                log("Erhöhe die Anzahl um 1 --> neue Anzahl:  $countItems <--");
                                Text("$countItems");
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const ButtonSmallPage3(),
                    const ButtonMediumPage3(),
                    const ButtonLargePage3(),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// ----------------------------------------------------------------------
// "Icon Minus" einfügen:
// ----------------------------------------------------------------------
class IconButtonMinusP3 extends StatelessWidget {
  const IconButtonMinusP3({super.key});
  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 660,
      right: 120,
      child: Icon(
        Icons.do_disturb_on_outlined,
        size: 44,
        color: Colors.white38,
      ),
    );
  }
}

// ----------------------------------------------------------------------
// "Image Ingredients" einfügen:
// ----------------------------------------------------------------------
class ImageIngredientsP3 extends StatelessWidget {
  const ImageIngredientsP3({super.key});
  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 575,
      left: 38,
      child: Image(
        image: AssetImage(
          "assets/ingredients.png",
        ),
        width: 120,
      ),
    );
  }
}

// ----------------------------------------------------------------------
// "button_add_order_for_sum" einfügen:
// ----------------------------------------------------------------------
class ButtonAddOrderForSumP3 extends StatelessWidget {
  const ButtonAddOrderForSumP3({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 680, // Position von Oben
          ),
          GestureDetector(
            onTap: () {
              log("Wechsle zur Seite 1 = MainApp");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainApp(),
                ),
              );
            },
            child: const Image(
              image: AssetImage(
                "assets/button_add_order_for_sum.png",
              ),
              width: 380,
            ),
          ),
        ],
      ),
    );
  }
}

// ----------------------------------------------------------------------
// hier wird der Cupcake über das ModalBottomSheet oben hinaus platziert:
// ----------------------------------------------------------------------
class BigImageCupcakeP3 extends StatelessWidget {
  const BigImageCupcakeP3({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 160,
      right: 40,
      child: Transform.translate(
        offset:
            const Offset(-40, -210), // "-" bei Offset geht über den Rand hinaus
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Transform.scale(
            // ".scale" zoomt das Bild
            scale: 1.8,
            child: const Image(
              image: AssetImage(
                "assets/cat cupcakes_3D.png",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------
// "IconButton" kann man NICHT einfügen, weil sonst cupcake nicht funzt!
// Dann "Icon Cancel" einfügen und KLICKBAR machen (mit GestureDetector):
// ----------------------------------------------------------------------
class ButtonCancelP3 extends StatelessWidget {
  const ButtonCancelP3({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 24,
      right: 4,
      child: GestureDetector(
        onTap: () {
          log("Wechsle zur Seite 2 = SecondPage");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ),
          );
        },
        child: const Icon(
          Icons.cancel_outlined,
          size: 44,
          color: Colors.white38,
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------
// ClipRRect "Mogli's Cup" einfügen:
// ----------------------------------------------------------------------
class ClipRRectMoglisCupP3 extends StatelessWidget {
  const ClipRRectMoglisCupP3({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 212,
      right: 16,
      left: 16,
      bottom: 190,
      child: ClipRRect(
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
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 24, 32, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white60,
                      ),
                      Text(
                        " 200",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white60),
                      ),
                    ],
                  ),
                ),

                Text(
                  "Mogli's Cup",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 24, 16),
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white60,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "₳",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      " 8.99",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Divider(
                    height: 1,
                    thickness: 0.8,
                    //indent: 16,
                    //endIndent: 40,
                    color: Colors.white60,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(24, 32, 24, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ingredients                           Reviews",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white60),
                      ),
                    ],
                  ),
                ),
                ReviewStarsP3(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------
// "Reviews Sterne" einfügen:
// ----------------------------------------------------------------------
class ReviewStarsP3 extends StatelessWidget {
  const ReviewStarsP3({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(235, 8, 24, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 18,
          ),
          Icon(
            Icons.star,
            color: Colors.white,
            size: 18,
          ),
          Icon(
            Icons.star,
            color: Colors.white,
            size: 18,
          ),
          Icon(
            Icons.star,
            color: Colors.white,
            size: 18,
          ),
          Icon(
            Icons.star_border,
            color: Colors.white,
            size: 18,
          ),
          Text(
            "    4.0",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}

// ----------------------------------------------------------------------
// "3 Buttons - Small/Medium/Large - einfügen:
// ----------------------------------------------------------------------
class ButtonLargePage3 extends StatelessWidget {
  const ButtonLargePage3({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 663,
      left: 168,
      child: Container(
        height: 38,
        width: 68,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
          color: Color.fromARGB(255, 99, 99, 102),
        ),
        child: const Center(
          child: Text(
            "Large",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------
class ButtonMediumPage3 extends StatelessWidget {
  const ButtonMediumPage3({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 663,
      left: 94,
      child: Container(
        height: 38,
        width: 80,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
          color: Color.fromARGB(255, 67, 70, 70),
        ),
        child: const Center(
          child: Text(
            "Medium",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white54,
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------
class ButtonSmallPage3 extends StatelessWidget {
  const ButtonSmallPage3({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 663,
      left: 26,
      child: Container(
        height: 38,
        width: 72,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
          color: Color.fromARGB(255, 67, 70, 70),
        ),
        child: const Center(
          child: Text(
            "Small",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white54,
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------------------
class ButtonAddOrderForSum extends StatelessWidget {
  const ButtonAddOrderForSum({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log("Wechsle zur Seite 1 = MainApp");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MainApp(),
          ),
        );
      },
      child: const Image(
        image: AssetImage("assets/button_add_order_for_sum.png"),
        width: 380,
      ),
    );
  }
}
// ----------------------------------------------------------------------