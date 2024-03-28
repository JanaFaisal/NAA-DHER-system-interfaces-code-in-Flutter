import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.zero, // Soft edge
                        topRight: Radius.zero, // Soft edge
                        bottomLeft:
                            Radius.circular(screenWidth * 0.07), // Sharp edge
                        bottomRight:
                            Radius.circular(screenWidth * 0.07), // Sharp edge
                      ),
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.15,
                        color: const Color.fromRGBO(37, 50, 55, 1.0),
                        child: Center(
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: screenWidth * 0.07,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.2,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(37, 50, 55, 1.0)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.15,
                            vertical: screenHeight * 0.03)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05))),
                      ),
                      child: Text(
                        "User information",
                        style: TextStyle(
                            fontSize: screenWidth * 0.055,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(37, 50, 55, 1.0)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.13,
                            vertical: screenHeight * 0.03)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05))),
                      ),
                      child: Text(
                        "Doctor information",
                        style: TextStyle(
                            fontSize: screenWidth * 0.055,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(37, 50, 55, 1.0)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.14,
                            vertical: screenHeight * 0.03)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05))),
                      ),
                      child: Text(
                        "Infant information",
                        style: TextStyle(
                            fontSize: screenWidth * 0.055,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Homepage1");
                    },
                    icon: Icon(Icons.arrow_back),
                    iconSize: screenWidth * 0.09,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
            ],
          ),
        ),
      ))),
    );
  }
}
