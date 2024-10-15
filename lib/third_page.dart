import 'dart:developer';

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
              image: AssetImage("assets/bg_mainscreen.png"),
              fit: BoxFit.cover,
            ),
          ),

          // //body: const BottomSheetExample(),
          // BottomSheetExample(),

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

// // // Muffin (grafiken/cat cupcakes_3D.png) einfügen:
              //body: const BottomSheetExample(),
              BottomSheetExample(),

// Button "Add to Order for A 8.99" einfügen:
            ],
          ),
        ),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ShowModalBottomSheetOnThirdPage(),
    );
  }
}

class ShowModalBottomSheetOnThirdPage extends StatelessWidget {
  const ShowModalBottomSheetOnThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('-----------------showModalBottomSheet---------------'),
      onPressed: () {
        showModalBottomSheet<void>(
          scrollControlDisabledMaxHeightRatio: 0.885,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 1000,
              color: const Color.fromARGB(255, 87, 36, 36),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,

// Muffin einfügen:

                  // children: [
                  //   Stack(
                  //     child: Positioned(
                  //       top: 252,
                  //       left: 16,
                  children: [
                    Image(
                      image: AssetImage("assets/cat cupcakes_3D.png"),
                      height: 450,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 300),
                    // ],
                    // //     ),
                    // //   ),
                    // // ],

                    // children: [
                    // const Text('--- Text wird hier nicht benötigt ---'),
                    ButtonAddOrderForSum(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

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
//                           "A 13.00",
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

// Button "Add to Order for A 8.99" einfügen:



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
