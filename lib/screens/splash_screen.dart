import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFF2447A9),
            Color(0xFF67AAF3),
          ],
          stops: [0.01, 1.0],
          transform: GradientRotation(168 * 3.14159265 / 180),
        ),
      ),
      child: Center(
          child: Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: Row(
                children: [
                  const IntrinsicHeight(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Smart",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'OpenSans'),
                      ),
                      Text(
                        "Lock",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'OpenSans'),
                      ),
                      Text(
                        "Door",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'OpenSans'),
                      ),
                      Text(
                        "Safe your Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )
                    ],
                  )),
                  IntrinsicHeight(
                      child: Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Image.asset('assets/images/door.png', height: 250),
                  )),
                ],
              ))),
    ));
  }
}
