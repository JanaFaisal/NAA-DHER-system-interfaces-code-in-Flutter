import 'package:flutter/material.dart';

// Here the code of the Signup page of NAA'DHER application

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    // To make the code fit for any screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          body: SafeArea(
              child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Image.asset("assets/images/NAADHER.png"),
                    SizedBox(
                      height: screenHeight * 0.1,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(157, 180, 192, 1.0)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.14,
                            vertical: screenHeight * 0.03)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05))),
                      ),
                      child: Text(
                        "Add another doctor",
                        style: TextStyle(
                            fontSize: screenWidth * 0.055,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    // Create The infant's Health History button
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(92, 107, 115, 1)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.15,
                            vertical: screenHeight * 0.03)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05))),
                      ),
                      child: Text(
                        "Add another infant",
                        style: TextStyle(
                            fontSize: screenWidth * 0.055,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.245,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/LoginOrSignup");
                      },
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                            fontSize: screenWidth * 0.055,
                            color: const Color.fromRGBO(37, 50, 55, 1.0),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ))),
    );
  }
}
