import 'dart:async';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    // Delay for 6 seconds and then navigate to the next page
    Timer(
      Duration(seconds: 6),
      () => Navigator.pushReplacementNamed(
          context, '/LoginOrSignup'), // the name of the next page
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          color: const Color.fromRGBO(224, 251, 252, 1.0),
          child: Stack(
            children: [
              SizedBox(
                width: screenWidth,
                child: Column(
                  //hnlklmk;l/
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.12,
                    ),
                    Text(
                      "Welcome to",
                      style: TextStyle(
                          fontSize: screenWidth * 0.07, fontFamily: "myfont"),
                    ),
                    Image.asset("assets/images/Logo.png"),
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
