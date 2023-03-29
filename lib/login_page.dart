import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
// Figma Flutter Generator 2Widget - FRAME

    return Scaffold(
      body: Column(children: [
        Expanded(
            child: Stack(
          children: [
            Image(image: AssetImage("images/box.png")),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image(
                image: AssetImage("images/triangle.png"),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("data"),
                Text("data"),
              ],
            )
          ],
        ))

        // Container(
        //     width: double.infinity,
        //     height: 266,
        //     decoration: BoxDecoration(
        //       color: Color.fromRGBO(42, 42, 42, 1),
        //     ),
        //     child: Row(
        //       children: [
        //         Text(
        //           'Welcome',
        //           textAlign: TextAlign.left,
        //           style: TextStyle(
        //               color: Color.fromRGBO(255, 255, 255, 1),
        //               fontFamily: 'Axiforma',
        //               fontSize: 41,
        //               letterSpacing:
        //                   0 /*percentages not used in flutter. defaulting to zero*/,
        //               fontWeight: FontWeight.normal,
        //               height: 1),
        //         ),
        //         // Expanded(
        //         //   child: Image(
        //         //     image: AssetImage("images/triangle.png"),
        //         //     width: 800,
        //         //     height: double.infinity,
        //         //   ),
        //         // ),
        //       ],
        //     )),
        // Positioned(
        //     top: 308,
        //     left: 29,
        //     child: Container(
        //         width: 321,
        //         height: 58,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(10),
        //             topRight: Radius.circular(10),
        //             bottomLeft: Radius.circular(10),
        //             bottomRight: Radius.circular(10),
        //           ),
        //           color: Color.fromRGBO(42, 42, 42, 0.10000000149011612),
        //         ))),
        // Positioned(
        //     top: 383,
        //     left: 29,
        //     child: Container(
        //         width: 321,
        //         height: 58,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(10),
        //             topRight: Radius.circular(10),
        //             bottomLeft: Radius.circular(10),
        //             bottomRight: Radius.circular(10),
        //           ),
        //           color: Color.fromRGBO(42, 42, 42, 0.10000000149011612),
        //         ))),
        // Positioned(
        //     top: 325,
        //     left: 83,
        //     child: Text(
        //       'Enter Username',
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //           color: Color.fromRGBO(111, 111, 111, 1),
        //           fontFamily: 'Axiforma',
        //           fontSize: 15,
        //           letterSpacing:
        //               0 /*percentages not used in flutter. defaulting to zero*/,
        //           fontWeight: FontWeight.normal,
        //           height: 1),
        //     )),
        // Positioned(
        //     top: 400,
        //     left: 80,
        //     child: Text(
        //       'Enter Password',
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //           color: Color.fromRGBO(111, 111, 111, 1),
        //           fontFamily: 'Axiforma',
        //           fontSize: 15,
        //           letterSpacing:
        //               0 /*percentages not used in flutter. defaulting to zero*/,
        //           fontWeight: FontWeight.normal,
        //           height: 1),
        //     )),
        // Positioned(
        //     top: 708,
        //     left: 40,
        //     child: Container(
        //         width: 316,
        //         height: 58,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(10),
        //             topRight: Radius.circular(10),
        //             bottomLeft: Radius.circular(10),
        //             bottomRight: Radius.circular(10),
        //           ),
        //           color: Color.fromRGBO(252, 21, 59, 1),
        //         ))),
        // Positioned(
        //     top: 722,
        //     left: 91,
        //     child: Text(
        //       'Login',
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //           color: Color.fromRGBO(255, 255, 255, 1),
        //           fontFamily: 'Axiforma',
        //           fontSize: 20,
        //           letterSpacing:
        //               0 /*percentages not used in flutter. defaulting to zero*/,
        //           fontWeight: FontWeight.normal,
        //           height: 1),
        //     )),
        /*Positioned(
top: 58.25213623046875,
left: -72,
child: Transform.rotate(
angle: 60.203221044601335 * (math.pi / 180),
child: SvgPicture.asset(
'assets/images/polygon1.svg',
semanticsLabel: 'polygon1'
);,
)
),*/
        // Positioned(
        //     top: 127,
        //     left: 30,
        //     child: Text(
        //       'Welcome',
        //       textAlign: TextAlign.left,
        //       style: TextStyle(
        //           color: Color.fromRGBO(255, 255, 255, 1),
        //           fontFamily: 'Axiforma',
        //           fontSize: 41,
        //           letterSpacing:
        //               0 /*percentages not used in flutter. defaulting to zero*/,
        //           fontWeight: FontWeight.normal,
        //           height: 1),
        //     )),
        // Positioned(
        //     top: 189,
        //     left: 30,
        //     child: Text(
        //       'Manage your Bus and Drivers',
        //       textAlign: TextAlign.left,
        //       style: TextStyle(
        //           color: Color.fromRGBO(255, 255, 255, 1),
        //           fontFamily: 'Axiforma',
        //           fontSize: 16,
        //           letterSpacing:
        //               0 /*percentages not used in flutter. defaulting to zero*/,
        //           fontWeight: FontWeight.normal,
        //           height: 1),
        //     )),
//         Positioned(
//             top: 0,
//             left: 0,
//             child: Container(
//                 width: 376,
//                 height: 36,
//                 decoration: BoxDecoration(),
//                 child: Stack(children: <Widget>[
//                   Positioned(
//                       top: 17.33333396911621,
//                       left: 337.33331298828125,
//                       child: Container(
//                           width: 24.32803726196289,
//                           height: 11.333333015441895,
//                           child: Stack(children: <Widget>[
//                             Positioned(
//                                 top: 0,
//                                 left: 0,
//                                 child: Container(
//                                     width: 22,
//                                     height: 11.333333015441895,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.only(
//                                         topLeft:
//                                             Radius.circular(2.6666667461395264),
//                                         topRight:
//                                             Radius.circular(2.6666667461395264),
//                                         bottomLeft:
//                                             Radius.circular(2.6666667461395264),
//                                         bottomRight:
//                                             Radius.circular(2.6666667461395264),
//                                       ),
//                                       border: Border.all(
//                                         color: Color.fromRGBO(255, 255, 255, 1),
//                                         width: 1,
//                                       ),
//                                     ))),
//                             /*Positioned(
// top: 3.666666030883789,
// left: 23,
// child: SvgPicture.asset(
// 'assets/images/cap.svg',
// semanticsLabel: 'cap'
// );
// ),*/
//                             Positioned(
//                                 top: 2,
//                                 left: 2,
//                                 child: Container(
//                                     width: 18,
//                                     height: 7.333333492279053,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.only(
//                                         topLeft:
//                                             Radius.circular(1.3333333730697632),
//                                         topRight:
//                                             Radius.circular(1.3333333730697632),
//                                         bottomLeft:
//                                             Radius.circular(1.3333333730697632),
//                                         bottomRight:
//                                             Radius.circular(1.3333333730697632),
//                                       ),
//                                       color: Color.fromRGBO(255, 255, 255, 1),
//                                     ))),
//                           ]))),
//                   Positioned(
//                       top: 17.330673217773438,
//                       left: 317,
//                       child: SizedBox.shrink()),
//                   Positioned(
//                       top: 17.666667938232422,
//                       left: 295,
//                       child: SizedBox.shrink()),
//                   Positioned(
//                       top: 7.3333001136779785,
//                       left: 21,
//                       child: Container(
//                           width: 54,
//                           height: 21,
//                           decoration: BoxDecoration(),
//                           child: Stack(children: <Widget>[
//                             Positioned(
//                                 top: 7,
//                                 left: 0,
//                                 child: Text(
//                                   '9:41',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       color: Color.fromRGBO(255, 255, 255, 1),
//                                       fontFamily: 'SF Pro Text',
//                                       fontSize: 15,
//                                       letterSpacing: -0.30000001192092896,
//                                       fontWeight: FontWeight.normal,
//                                       height: 1),
//                                 )),
//                           ]))),
//                 ]))),
//         Positioned(
//             top: 722,
//             left: 91,
//             child: Text(
//               'Login',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   color: Color.fromRGBO(255, 255, 255, 1),
//                   fontFamily: 'Axiforma',
//                   fontSize: 20,
//                   letterSpacing:
//                       0 /*percentages not used in flutter. defaulting to zero*/,
//                   fontWeight: FontWeight.normal,
//                   height: 1),
//             )),
      ]),
    );
  }
}
