import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_14_jp_app_design_challenge/main.dart';

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

// Überschrift einfügen:
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

              // ShowModalBottomSheetOnThirdPage automatisch einblenden:
              // ---> Code <---
              //CupcakeExtra(),
              // Button "Add to Order for ₳ 8.99" einfügen:
            ],
          ),
        ),
      ),
    );
  }
}

class CupcakeExtra extends StatelessWidget {
  const CupcakeExtra({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Center(
          child: Positioned(
            // right: 26,
            // top: -200,
            // child: Transform.scale(
            //   scale: 2,
            //   child: const Image(
            //     image: AssetImage("assets/cat cupcakes_3D.png",),
            //   ),
            // ),

            right: 26,
            top: -200,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,

              // Muffin einfügen:
              // children: [
              //   Stack(
              //     child: Positioned(
              //       top: 252,
              //       left: 16,

              children: [
                Image(
                  image: AssetImage(
                    "assets/cat cupcakes_3D.png",
                  ),
                  height: 500,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 300),
                //ButtonAddOrderForSum(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ShowModalBottomSheetOnThirdPage extends StatelessWidget {
  const ShowModalBottomSheetOnThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        //style: ButtonStyle(backgroundColor: Color.fromARGB(255, 87, 36, 36),),
        child: const Text(''),
        onPressed: () {
          showModalBottomSheet<void>(
            scrollControlDisabledMaxHeightRatio: 0.885,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      height: 825, // schließt genau unten ab
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color.fromARGB(255, 63, 24, 24),
                            Color.fromARGB(255, 73, 58, 58)
                          ],
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const SizedBox(height: 500),
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
                      ),
                    ),
// ----------------------------------------------------------------------
// hier wird der Cupcake über das ModalBottomSheet oben hinaus platziert:
// ----------------------------------------------------------------------
                    Positioned(
                      top: 160,
                      right: 40,
                      child: Transform.translate(
                        offset: const Offset(-40,
                            -210), // "-" bei Offset geht über den Rand hinaus
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
                    ),
// ----------------------------------------------------------------------
                    Positioned(
                      top: 212,
                      right: 16,
                      left: 16,
                      bottom: 250,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(32)),
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
                              border:
                                  Border.all(color: Colors.white, width: 0.2),
                            ),
                            child: const Column(
                              children: [
                                //SizedBox(height: 8),

                                Padding(
                                  padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.heart_broken_rounded,
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
                                      fontSize: 32,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                                  child: Text(
                                    "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white60,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 32),
                                Text(
                                  "₳ 8.99",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 32),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Divider(
                                    height: 1,
                                    thickness: 0.8,
                                    //indent: 16,
                                    //endIndent: 40,
                                    color: Colors.white60,
                                  ),
                                )

                                // ButtonOrderNow(),
                                // ButtonAddOrderForSum(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
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

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       child: const Text('--- zeige ModalBottomSheet --- vorübergehend ---'),
//       onPressed: () {
//         showModalBottomSheet<void>(
//           scrollControlDisabledMaxHeightRatio: 0.885,
//           context: context,

//           builder: (BuildContext context) {
//             return Container(

//               height: 1200,
//               color: const Color.fromARGB(255, 87, 36, 36),
//               child: const Center(),
// // ButtonAddOrderForSum(),
//             );
//           },
//         // ButtonAddOrderForSum(),

//         );
//       },
//     );
//   }
// }

// ButtonAddOrderForSum();

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






// // Muffin einfügen:
//               const Positioned(
//                 top: 252,
//                 left: 16,
//                 child: Image(
//                   image: AssetImage("assets/Top Card.png"),
//                   width: 400,
//                   //color: Color.fromARGB(162, 36, 36, 36), // transparenz?
//                   fit: BoxFit.cover,
//                 ),
//               ),

// // "Burger_3D" einfügen:
//               Positioned(
//                 top: 315,
//                 right: 32,
//                 child: Transform.scale(
//                   scale: 1.1,
//                   child: const Image(
//                     image: AssetImage("assets/Burger_3D.png"),
//                   ),
//                 ),
//               ),

// // Text  in die "Top Card" einfügen:
//               const Padding(
//                 padding: EdgeInsets.fromLTRB(32, 180, 16, 0),
//                 child: Positioned(
//                   top: 160,
//                   left: 16,
//                   right: 16,
//                   child: Column(
//                     children: [
//                       SizedBox(height: 8),
//                       SizedBox(height: 85),
//                       SizedBox(
//                         height: 14,
//                         width: 400,
//                         // mainAxisAlignment: MainAxisAlignment.end
//                         // child: Image(image: AssetImage("assets/Star.png"),
//                         // child: Icon(Icons.star),

//                         child: Text(
//                           "                                                                                                   4.8",
//                           style: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white70),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 400,
//                         child: Text(
//                           "Angi's Yummy Burger",
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       SizedBox(
//                         width: 400,
//                         child: Text(
//                           "Delish vegan burger\nthat tastes like heaven",
//                           style: TextStyle(fontSize: 14, color: Colors.white),
//                         ),
//                       ),
//                       SizedBox(height: 16),
//                       SizedBox(
//                         width: 400,
//                         height: 60,
//                         child: Text(
//                           "₳ 13.00",
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Image(
//                             image: AssetImage("assets/button_add_to_order.png"),
//                             width: 120,
//                           ),
//                           // Padding(
//                           //   padding: EdgeInsets.fromLTRB(200, 16, 0, 0),
//                           //   child: Row(
//                           //     children: [
//                           //       Image(
//                           //         image: AssetImage("assets/Burger_3D.png"),
//                           //         width: 120,
//                           //       ),
//                           //     ],
//                           //   ),
//                           // ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

// Button "Add to Order for ₳ 8.99" einfügen:



// -------------- Original-Vorlage ------------------
// class BottomSheetExample extends StatelessWidget {
//   const BottomSheetExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         child: const Text('showModalBottomSheet'),
//         onPressed: () {
//           showModalBottomSheet<void>(
//             context: context,
//             builder: (BuildContext context) {
//               return Container(
//                 height: 200,
//                 color: Colors.amber,
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       const Text('Modal BottomSheet'),
//                       ElevatedButton(
//                         child: const Text('Close BottomSheet'),
//                         onPressed: () => Navigator.pop(context),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


                    // child: const Center(
                    //   child: Positioned(
                    //     top: -100,
                    //     child: Column(
                    //       // mainAxisAlignment: MainAxisAlignment.center,
                    //       // mainAxisSize: MainAxisSize.min,

                    //       // Muffin einfügen:

                    //       // children: [
                    //       //   Stack(
                    //       //     child: Positioned(
                    //       //       top: 252,
                    //       //       left: 16,

                    //       children: [
                    //         Image(
                    //           image: AssetImage("assets/cat cupcakes_3D.png"),
                    //           height: 450,
                    //           fit: BoxFit.cover,
                    //         ),
                    //         SizedBox(height: 300),
                    //         ButtonAddOrderForSum(),
                    //       ],
                    //     ),
                    //   ),
                    // ),


                    // child: Container(
                    //   height: 200,
                    //   width: 350,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white.withOpacity(0.04),
                    //     borderRadius: BorderRadius.circular(16),
                    //     border: Border.all(color: Colors.white, width: 0.2),
                    //     //boxShadow: BoxShadow(spreadRadius: 1,),
                    //   ),
                    //   child: const Padding(
                    //     padding: EdgeInsets.only(top: 30),
                    //     child: Text(
                    //       "Feeling Snackish Today?",
                    //       textAlign: TextAlign.center,
                    //       style: TextStyle(
                    //         fontWeight: FontWeight.bold,
                    //         color: Colors.white,
                    //         fontSize: 24,
                    //       ),
